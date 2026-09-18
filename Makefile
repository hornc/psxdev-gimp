CC       = gcc
TARGET   = gimp-psx-tim
SRC      = tim.c
PKGS     = gtk+-2.0 gimp-2.0 gimpui-2.0

CFLAGS  += -Wall -g `pkg-config --cflags $(PKGS)`
LDLIBS  += `pkg-config --libs $(PKGS)`

.PHONY: all clean install

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $@ $< $(LDLIBS)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	gimptool-2.0 --install-bin $(TARGET)
