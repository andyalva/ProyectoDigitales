INPUT = test_bench.v
TARGET = serial_parallel_cond.x

CC = iverilog
RUN = vvp
FLAGS = -o

all:
	$(CC) $(FLAGS) $(TARGET) $(INPUT)
	$(RUN) $(TARGET)

clean:
	rm -rf $(TARGET) *.tcl