import "dart:io";

String? get_name(){
  print("Enter your name: ");
  var name = stdin.readLineSync();
  return name.toString();
}

// work with the given value
int get_age(){
  print("Please enter your age: ");
  int? age = int.parse(stdin.readLineSync().toString());
  return age;
}
void main() {
  print("Here we deal with user input with dart");
  String? name = get_name();
  int age = get_age();
  print("Your name is: $name");
  print("Your age is: $age");
  age += 1;
  print("Next year you will be ${age + 1}");
}