#include <iostream>
#include <Environment.hpp>
#include <SDL/SDL.h>

using namespace std;

int main() 
{
  SDL_Init(SDL_INIT_EVERYTHING);
  
  Environment e;
  
  SDL_Quit();  
  return 0;
}
