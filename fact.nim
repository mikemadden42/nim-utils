import strutils

var n = 0
try:
  stdout.write "Input positive integer number: "
  n = stdin.readline.parseInt
except ValueError:
  raise newException(ValueError, "You must enter a positive number")

var fact = 1
for i in 2..n:
  fact = fact * i

echo fact
