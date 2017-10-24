#include <iostream>
#include <Environment.hpp>
using namespace std;

Environment::Environment(){
  cout << "Environment initialization" << endl;
  _grid = NULL;
  _pieces = NULL;
}

Environment::~Environment(){
  cout << "Environment destruction" << endl;
}


