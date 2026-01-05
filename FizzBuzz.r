# pour i de 1 à 100
for (i in 1:100) {
    # si i est divisible par 3 et par 5
  if (i %% 3 == 0 && i %% 5 == 0) {
    print("FizzBuzz")
  } 
  else if (i %% 3 == 0) {
    print("Fizz")
  } 
  else if (i %% 5 == 0) {
    print("Buzz")
  } 
  else {
    print(i)
  }
}