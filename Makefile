CC	= gcc
DEFS    = -Wl,-rpath=/home/work/local/libphenom/lib -L/home/work/local/libphenom/lib
CFLAGS	= -g -Wall
INCDIR  = -I./include -I/home/work/local/libphenom/include
OBJ     = fcgi.o fcgi_header.o
LIBS    = -lphenom -lssl

fcgid: $(OBJ)
	$(CC) $(CFLAGS) $(DEFS) $(LDFLAGS) -o $@ $(OBJ)  $(LIBS)

clean:
	rm -rf *.o
	rm fcgid
.c.o:
	$(CC) -c $(CFLAGS) $(DEFS) $(INCDIR) $< 

