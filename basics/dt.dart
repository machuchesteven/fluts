void first_func(){
  //random printing
  print("Dart for data types started");

  var dt1 = "numeric";
  print(dt1.runtimeType); //gives the type of the variable

  var dt2 = 1;
  print(dt2.runtimeType); //gives the type of the variable

  print("DataType1 is: " + dt1 + "\nDataType2 is: " + dt2.toString());
}

void second_func(){
  // variable assignment NUMERIC
  int age = 24;
  double gpa = 23.98;
  num father_age = 53;
  print("Age is: " + age.toString() + "\nGPA is: " + gpa.toString() + "\nFather's age is: " + father_age.toString());
  num age_dif = father_age - age;
  print(age);
  print(father_age);
  print("Age difference is: " + age_dif.toString());
  print("Getting values with specified decimal points, below with three decimal points");
  print(age_dif.toStringAsFixed(3));
}

void third_func(){
  // variable assignment STRING
  String first_name = "Machu";
  String last_name = "Pichu";
  print("The first name is $first_name, the last name is $last_name");
  print("Full Name: "+first_name + " " + last_name);
}

void main(){
  first_func();
  second_func();
  third_func();
}