proc reverse(s: string): string =
  for i in countdown(s.high, 0):
    result.add s[i]

let str1 = "Reverse This!"
echo "Reversed: ", reverse(str1)
