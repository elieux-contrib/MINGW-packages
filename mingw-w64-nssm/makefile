nssm: account.cpp.o console.cpp.o env.cpp.o event.cpp.o gui.cpp.o imports.cpp.o io.cpp.o nssm.cpp.o process.cpp.o registry.cpp.o service.cpp.o settings.cpp.o messages.rc.o nssm.rc.o
	g++ -o $@ $^ $(LDFLAGS)

%.cpp.o: %.cpp
	g++ -c -o $@ $< $(CXXFLAGS)

nssm.rc.o: nssm.rc
	iconv -f utf-16 -t utf-8 < $< > nssm.utf-8.rc
	windres -i nssm.utf-8.rc -o $@

messages.rc.o: messages.rc
	windres -i $< -o $@
