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
	g++ $(SRC) -I$(SRC_PATH) -o $(EXE) -lSDL

run:
	@./$(EXE)

pipeline: cc run

memcheck:
	@valgrind ./$(EXE)


sdl_install:
	@sudo apt-get install libsdl1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev

clean:
	@rm -rf $(EXE) $(SRC_PATH)*~ $(TST_PATH)*~ *~
