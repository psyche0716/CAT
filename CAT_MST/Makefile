# variables
# Compiler settings - Can be customized.
CC = gfortran
CXXFLAGS =-c -g -Og -Wall 
exe = a
obj = main.o func_information.o func_normalPDF.o \
func_probability.o subr_response.o

# linking 鏈結
a: $(obj)
	$(CC) -o $(exe) $(obj)

# compiling 編譯
%.o:%.f90
	$(CC) $(CXXFLAGS) $^ -o $@
# # 原始的寫法
# main.o: main.f90
# 	$(CC) $(CXXFLAGS) main.f90
# func_information.o: func_information.f90
# 	$(CC) $(CXXFLAGS) func_information.f90
# func_normalPDF.o: func_normalPDF.f90
# 	$(CC) $(CXXFLAGS) func_normalPDF.f90
# func_probability.o: func_probability.f90
# 	$(CC) $(CXXFLAGS) func_probability.f90
# subr_response.o: subr_response.f90
# 	$(CC) $(CXXFLAGS) subr_response.f90

# cleanup
# 偽目標
.PHONY : clean 
clean : 
	del -file *.exe *.o *.txt
# rm a.exe 運行時會有問題，待調整

# run
run:
	make
	./a.exe


# 代號說明：
# $^：代表目前的相依性項目
# $@：目前的目標項目名稱
# $*：代表目前的相依性項目，但不含副檔名。
# $?：代表需要重建（被修改）的相依性項目。