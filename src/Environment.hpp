#include<Square.hpp>
#include<Piece.hpp>

#define GRID_SIZE 8

class Environment{
  
private:
  Square * _grid;
  Piece * _pieces;

public:
  Environment();
  ~Environment();
  
};
  

