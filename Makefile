# DESTDIR is where the program should be installed
DESTDIR = /usr/local/bin
install: 
	install ./dbdigger.sh ${DESTDIR}/dbdigger

uninstall:
	rm ${DESTDIR}/dbdigger

