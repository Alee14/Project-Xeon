echo Building Program...

if [ -d "$DIRECTORY" ]; then
  echo Skipping making the "out" folder...
else
  mkdir out 
  echo Created the "out" folder..
fi

g++ -g main.cpp -o out/game
echo Building Complete!
