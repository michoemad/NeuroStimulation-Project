import serial, socket, sys
from pyqtgraph.Qt import QtGui, QtCore
import pyqtgraph as pg
import numpy as np
import signal,struct
import datetime
from Queue import Queue
from scipy.fftpack import fft
QThread = QtCore.QThread
D1 = datetime.datetime.now()
RATE = 1
counter=1
q = Queue()
class BasePlot(object):
    def __init__(self, stream, **kwargs):
        self.stream = stream
        try:
            self.app = QtGui.QApplication([])
        except RuntimeError:
            sys.exit()
        self.view = pg.GraphicsView()
        self.layout = pg.GraphicsLayout(border=(100,100,100))
        self.view.closeEvent = self.handle_close_event
        self.layout.closeEvent = self.handle_close_event
        self.view.setCentralItem(self.layout)
        self.view.show()
        self.view.setWindowTitle('Software Oscilloscope')
        self.view.resize(800,600)
        self.plot_list = []
        self.f = np.linspace(0, 5, 1000) # assume sampling rate is 2


    def open_stream(self):
        print("Opening Stream")
        self.stream.open()
        
    def close_stream(self):
        if hasattr(self.stream, 'flushInput'):
            self.stream.flushInput()
        if hasattr(self.stream, 'flushOutput'):
            self.stream.flushOutput()
        self.stream.close()
        print("Stream closed")
        
    def handle_close_event(self, event):
        self.close_stream()
        self.app.exit()

    def plot_init(self):
##        for i in xrange(20):
##            trial_data = self.stream.readline().rstrip().split(',')

        new_plot = self.layout.addPlot()
        new_plot.plot(np.zeros(2000))
        new_plot.setXRange(1300,2000)
        self.plot_list.append(new_plot)
        self.thread = FetchData(new_plot.listDataItems()[0],self.socket)
        self.thread.start()
        self.layout.nextRow()
        sp_xlabels = [
            (np.log10(10), '10'), (np.log10(100), '100'),
            (np.log10(1000), '1000'), (np.log10(22050), '22050')
        ]
        sp_xaxis = pg.AxisItem(orientation='bottom')
        sp_xaxis.setTicks([sp_xlabels])
        spectrumPlot = self.layout.addPlot()
        spectrumPlot.plot()
        self.plot_list.append(spectrumPlot)
        
        
    def update(self):
        global RATE,D1,counter
        if (not q.empty()):
            data = q.get()
            #print(type(data[0:4]))
            info = struct.unpack("!1h",data) #info has the data values, 260 values
            info = (info[0]>>4)* 244 / 1000 /2
            #print(info)
            line = self.plot_list[0].listDataItems()[0]
            #print(RATE)
           # print (vals)
            #for data, line in zip(stream_data, self.plot_list):
            line.informViewBoundsChanged()
            shifter = len(data)
            line.yData = np.roll(line.yData, -1 * shifter)
            line.yData[-1 * shifter:] = info
            #print(len(fft(line.yData)))
            self.view.setWindowTitle("Software Oscilloscope" + " Ethernet Speed " + str(RATE) + " Pack/Sec")

            line.setData(line.xData,line.yData,pen="c")
            line.xClean = line.yClean = None
            line.xDisp = None
            line.yDisp = None
            line.updateItems()
            line.sigPlotChanged.emit(line)
            spectrum  = self.plot_list[1].listDataItems()[0]
            yf = np.abs(fft(line.yData[1300:])[:350]) 
            spectrum.xData = np.linspace(0,RATE,350) 
            
            spectrum.yData = yf
            spectrum.setData(spectrum.xData,spectrum.yData,pen="m")
    def start(self):
        #self.open_stream()
        self.plot_init()
        timer = QtCore.QTimer()
        timer.timeout.connect(self.update)
        timer.start(0)
        if (sys.flags.interactive != 1) or not hasattr(QtCore, 'PYQT_VERSION'):
            self.app.exec_()   

class SerialPlot(BasePlot):
    def __init__(self, com_port, baud_rate, **kwargs):
        self.serial_port = serial.Serial()
        self.serial_port.baudrate = baud_rate
        self.serial_port.port = com_port
        super(SerialPlot, self).__init__(self.serial_port, **kwargs)


class FetchData(QThread):
    
    def __init__(self, line,socket):
        QThread.__init__(self)
        self.line = line
        self.socket = socket
##    def __del__(self):
##        self.wait()
        
    def run(self):
        global RATE,D1,counter
        while(True): 
            try:
                data = self.socket.recv(1040)
                D = datetime.datetime.now()
                q.put(data[2:4])
                
                #more than 1 second has passed
                if (D-D1).seconds >=1:
                    D1 = D
                    RATE = counter
                    counter = 1
                else:
                    counter +=1
            except IOError as E:
                sys.exit(0)


class SocketClientPlot(BasePlot):
    def __init__(self, address, port, **kwargs):
        try:
            self.socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self.socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            #self.socket.setblocking(0)
            self.socket_params = (address, port)
            self.socket.bind((address, port))
            super(SocketClientPlot, self).__init__(None, **kwargs)
        except:
            print("No Ethernet Connection")
            exit()
        #self.stream = self.socket.makefile()

        
    def open_stream(self):
        pass
        
    def close_stream(self):
        self.socket.close()
        #self.stream.close()

class GenericPlot(BasePlot):
    def __init__(self, stream, **kwargs):
        if hasattr(stream, 'open') \
        and hasattr(stream, 'close') \
        and hasattr(stream, 'readline'):
            super(GenericPlot, self).__init__(stream, **kwargs)
        else:
            raise BadAttributeError("One of the open/close/readline attributes is missing")  
plot = SocketClientPlot('192.168.1.16', 4096)
plot.start()
