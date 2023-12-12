// This operates for loops in dart

void for_loop(){
  print("\nFor loop \n");
  var i = 5;
  for (var j = 0; j < i; j++) {
    print("The value of j is $j");
  }
}

void for_in(){
  print("\nFor In Loop\n");
  var names = ["John", "Tina", "Marry", "Maria"];
  for(var name in names){
    print(name);
  }
}

void while_loop(){
  print("\nWhile Loop\n");
  num number = 0;
  while (number < 100){
    print("Number is $number");
    number++;
  }
}

void main() {
  for_loop();
  for_in();
  while_loop();
}