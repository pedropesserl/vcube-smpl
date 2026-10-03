CC = gcc
PROGRAM = vring
CFLAGS = -Iinclude -Wall -Wextra
LFLAGS = -lm

_SRC = main.c smpl.c rand.c
_DEPS = smpl.h

SDIR = src
IDIR = include
SRC = $(_SRC:%=$(SDIR)/%)
DEPS = $(_DEPS:%=$(IDIR)/%)

all: $(PROGRAM)

$(PROGRAM): $(SRC) $(DEPS)
	$(CC) -o $@ $(SRC) $(CFLAGS) $(LFLAGS)

clean:
	rm -f $(PROGRAM)
