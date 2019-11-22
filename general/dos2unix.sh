#!/bin/bash

for file in $1/*
do
  tr -d '\15\32' < $file > sansEol.c
  tr -d '\r' < sansEol.c > sansCr.c
  rm $file
  mv sansCr.c $file
  rm sansEol.c
  echo 'converted file is ' $file
done
