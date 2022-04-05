INCLUDES = misc.h

SOURCES =	main.c \
			misc.c
TARGET = c1m3
FILES = *.o *.out *.i *.d *.map

CC=arm-none-eabi-gcc
CPU = cortex-m4
ARCH = thumb
FPU = fpv4-sp-d16
SPECS = nosys.specs
LDFLAGS= -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
ARMFLAGS = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS) -mfpu=$(FPU) -march=armv7e-m -mfloat-abi=hard 
LINKER_FILE = msp432p401r.lds
SIZE = size

CFLAGS = -Wall -Werror -g -O0 -std=c99 $(ARMFLAGS)

NM = arm-none-eabi-nm
NMFLAGS = -S --size-sort -s

%.d:%.c
	$(CC) $(INCLUDES) $(CFLAGS) -M $^ -o $@

%.o:main.c
	$(CC) $(CFLAGS) -c $^ -o $@

%.asm:%.c
	$(CC) $(CFLAGS) -S $^ -o $@
$(TARGET).asm:%.c
	$(OBJDUMP) -d $(TARGET).out -o $@

$(TARGET).out:$(SOURCES)
	$(CC) $(CFLAGS) $(INCLUDES) $(LDFLAGS) $^ -o $@
	$(SIZE) -Atd $(TARGET).out

.PHONY:clean
clean:
	rm -rf $(FILES)

.PHONY:nm
nm:
	$(NM) $(NMFLAGS) misc.o
