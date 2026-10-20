CC = gcc
PROGRAM = vring
CFLAGS = -Iinclude -Wall -Wextra
LFLAGS = -lm

_SRC = smpl.c rand.c
_DEPS = smpl.h

SDIR = src
IDIR = include
SRC = $(_SRC:%=$(SDIR)/%)
DEPS = $(_DEPS:%=$(IDIR)/%)

all: $(PROGRAM) hipercubo

$(PROGRAM): src/main.c $(SRC) $(DEPS)
	$(CC) -o $@ $^ $(CFLAGS) $(LFLAGS)

hipercubo: src/hipercubo.c $(SRC) $(DEPS)
	$(CC) -o $@ $^ $(CFLAGS) $(LFLAGS)

clean:
	rm -f $(PROGRAM) hipercubo
