SRC_PATH=src/
TST_PATH=tst/

CLASS=\
	Main\
	Environment\
	Square\
	Piece\

SRC=$(addprefix $(SRC_PATH), $(CLASS:=.cpp))
HPP=$(addprefix $(SRC_PATH), $(CLASS:=.hpp))

EXE=build/chessAI.exe

all: pipeline

cc: src
	g++ $(SRC) -I$(SRC_PATH) -o $(EXE)

run:
	@./$(EXE)

pipeline: cc run

memcheck:
	@valgrind ./$(EXE)

clean:
	@rm -rf $(EXE) $(SRC_PATH)*~ $(TST_PATH)*~ *~
