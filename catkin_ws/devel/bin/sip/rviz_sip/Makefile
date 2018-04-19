TARGET = "/home/atv/atv-project-2017/catkin_ws/devel/lib/python2.7/dist-packages/rviz/librviz_sip".so
OFILES = siplibrviz_sipcmodule.o siplibrviz_siprvizYamlConfigReader.o siplibrviz_siprvizYamlConfigWriter.o siplibrviz_siprvizConfigMapIterator.o siplibrviz_siprvizConfig.o siplibrviz_siprvizOgreLogging.o siplibrviz_siprvizToolManager.o siplibrviz_siprvizTool.o siplibrviz_siprvizViewManager.o siplibrviz_siprvizViewController.o siplibrviz_siprvizPanelDockWidget.o siplibrviz_siprvizBoolProperty.o siplibrviz_siprvizDisplayGroup.o siplibrviz_siprvizDisplay.o siplibrviz_siprvizProperty.o siplibrviz_siprvizVisualizationManager.o siplibrviz_siprvizVisualizationFrame.o siplibrviz_siprviz.o
HFILES = sipAPIlibrviz_sip.h 

CC = gcc
CXX = g++
LINK = g++
CPPFLAGS = -DNDEBUG -DQT_NO_DEBUG -DQT_CORE_LIB -DQT_GUI_LIB -I. -I/home/atv/atv-project-2017/catkin_ws/src/rviz-indigo-devel/src -I/home/atv/atv-project-2017/catkin_ws/devel/include -I/home/atv/atv-project-2017/catkin_ws/src/vision_opencv-kinetic/image_geometry/include -I/home/atv/atv-project-2017/catkin_ws/src/geometry2-indigo-devel/tf2_ros/include -I/home/atv/atv-project-2017/catkin_ws/src/geometry2-indigo-devel/tf2/include -I/home/atv/atv-project-2017/catkin_ws/src/geometry2-indigo-devel/tf2_msgs/include -I/opt/ros/jade/include -I/usr/include -I/usr/local/include/opencv -I/usr/local/include -I/usr/include/eigen3 -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -I/usr/share/qt4/mkspecs/default -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I/usr/X11R6/include
CFLAGS =  -g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security  -D_FORTIFY_SOURCE=2 -fPIC -O2 -Wall -W -D_REENTRANT
CXXFLAGS =  -g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security  -D_FORTIFY_SOURCE=2 -fPIC -O2 -Wall -W -D_REENTRANT
LFLAGS =  -Wl,-Bsymbolic-functions -Wl,-z,relro -Wl,-O1 -Wl,-rpath,"/home/atv/atv-project-2017/catkin_ws/devel/lib" -shared  -Wl,-O1 -Wl,--version-script="/home/atv/atv-project-2017/catkin_ws/devel/lib/python2.7/dist-packages/rviz/librviz_sip".exp
LIBS = -L/home/atv/atv-project-2017/catkin_ws/devel/lib -L/usr/lib -L/usr/X11R6/lib -lrviz -lQtCore -lQtGui
MOC = moc-qt4
.SUFFIXES: .c .o .cpp .cc .cxx .C


.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.C.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.c.o:
	$(CC) -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

all: $(TARGET)

$(OFILES): $(HFILES)

$(TARGET): $(OFILES)
	@echo '{ global: initlibrviz_sip; local: *; };' > "/home/atv/atv-project-2017/catkin_ws/devel/lib/python2.7/dist-packages/rviz/librviz_sip".exp
	$(LINK) $(LFLAGS) -o $(TARGET) $(OFILES) $(LIBS)

install: $(TARGET)
	@test -d $(DESTDIR)/usr/lib/python2.7/dist-packages || mkdir -p $(DESTDIR)/usr/lib/python2.7/dist-packages
	cp -f $(TARGET) $(DESTDIR)/usr/lib/python2.7/dist-packages/$(TARGET)

clean:
	-rm -f $(TARGET)
	-rm -f siplibrviz_sipcmodule.o
	-rm -f siplibrviz_siprvizYamlConfigReader.o
	-rm -f siplibrviz_siprvizYamlConfigWriter.o
	-rm -f siplibrviz_siprvizConfigMapIterator.o
	-rm -f siplibrviz_siprvizConfig.o
	-rm -f siplibrviz_siprvizOgreLogging.o
	-rm -f siplibrviz_siprvizToolManager.o
	-rm -f siplibrviz_siprvizTool.o
	-rm -f siplibrviz_siprvizViewManager.o
	-rm -f siplibrviz_siprvizViewController.o
	-rm -f siplibrviz_siprvizPanelDockWidget.o
	-rm -f siplibrviz_siprvizBoolProperty.o
	-rm -f siplibrviz_siprvizDisplayGroup.o
	-rm -f siplibrviz_siprvizDisplay.o
	-rm -f siplibrviz_siprvizProperty.o
	-rm -f siplibrviz_siprvizVisualizationManager.o
	-rm -f siplibrviz_siprvizVisualizationFrame.o
	-rm -f siplibrviz_siprviz.o
	-rm -f "/home/atv/atv-project-2017/catkin_ws/devel/lib/python2.7/dist-packages/rviz/librviz_sip".exp
