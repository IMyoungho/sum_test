all: sum_test #현재에서 make파일을 찾는데 첫타겟이 all임으로 바로 sum_test의 main.o 와 sum.o를 찾아간다. 그다음 main.o 랑 sum.o를 찾아가서 실행됨

sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

main.o: sum.h main.cpp
	g++ -c -o main.o main.cpp

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o
	
clean:
	rm -f *.o
	rm -f sum_test #github에 올리는 것이라 굳이 실행파일 필요없음

