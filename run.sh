echo Which program do you want to run?
echo
echo 1 - Exercise01.cpp
echo 2 - Exercise02.cpp

echo
read -p 'Enter your Choice (1-2) : ' no

case $no in 1*)
     filename="Exercise01.cpp Item.cpp"
;;
  2*)
     filename="Exercise02.cpp Rectangle.cpp Circle.cpp"
;;
esac

clang++-7 -pthread -std=c++17 -o main $filename
./main

echo
echo
read -p 'Do you want to Test if your program is correct ? (Y/N) :' choice

if [ $choice == 'Y' ] || [ $choice == 'y' ]; then
  if [ $no -ge 1 -a $no -le 4 ]; then
     ./test $no
  fi
fi
