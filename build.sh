#!/bin/sh -x

for PROG in cores hello fact rev tenure; do
	# nim c -d:release --opt:size --passL:-s $PROG.nim
	nim -d:release --opt:size c $PROG && strip $PROG
	# nim c -d:mingw --app=console --cpu:amd64 -d:release --opt:size --passL:-s $PROG.nim
done
