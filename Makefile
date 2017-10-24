SRC_PATH=src
TST_PATH=tst

CLASS=\
	Main\

SRC=$(addprefix $(SRC_PATH)/, $(CLASS:=.cpp))
HPP=$(addprefix $(SRC_PATH)/, $(CLASS:=.hpp))

EXE=build/chessAI.exe

all: pipeline

cc: src
	g++ $(SRC) -o $(EXE)

run:
	@./$(EXE)

pipeline: cc run

clean:
	@rm -rf $(EXE) $(SRC_PATH)/*~ $(TST_PATH)/*~ *~
