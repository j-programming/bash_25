#!/bin/bash

func() {
  echo "Chcesz kontynuowac?"
  select odp in Tak Nie
  do
    case $odp in
    Tak) return 0 ;;
    Nie) return 1 ;;
   esac
done
}

while func
do
 echo Jeszcze raz
done
