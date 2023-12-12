


dynamic check_fizz(int numb){
  dynamic number = numb;
  if(number % 3 == 0 && number % 5 == 0) number = 'Fizz Buzz';
  else if (number % 3 == 0) number ='Fizz';
  else if (number % 5 == 0) number = 'Buzz';
  else number = number;
  return number;
}



void first_check(){
  int number = 75;
  dynamic fizzbuzz = [];
  while (number > 0) {
    dynamic num = check_fizz(number);
    fizzbuzz.add(num);
    number--;
  }
  print(fizzbuzz);
}

void main(){
  int number = 100;
  while (number > 0) {
    print("$number is : ${check_fizz(number)}");
    number--;
  }
}