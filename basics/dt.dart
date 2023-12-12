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


void fourth_func(){
  // dynamic values
  dynamic data = "Hello";
  print("DYnamically assigned data: " + data);
  data = 1;
  print("DYnamically assigned data after chaning: " + data.toString());
}

void fifth_func(){
  // finals and const
  // finals are values which will be 
  //const is for values which 
  const String name = "Misso Missondo";
  final String name2 = "Misso Miseka";
  //for null values, they only accept var keyword
  var name3;
  print(name3);
  print(name2);
  print(name);
  print("Name and name2 can't not be changed values");
}

void sixth_func(){
  // boolean values
  bool isTrue = true;
  bool isFalse = false;
  print("isTrue is: " + isTrue.toString() + "\nisFalse is: " + isFalse.toString());
  print("Myboolean values are\nisTrue: $isTrue\nisFalse: $isFalse");
}

void seventh_func(){
  // here we deal with lists, and list methods in dart
  // we are talking about growable lists, since there are both
  // fixed lists and growables
  print("Dealing with lists");
  var myList = [1,2,3];
  print(myList);
  print(myList[0]);
  print("Change the value of a list item");
  myList[0] = 36;
  print(myList[0]);

  // creating a new empty list
  var newList = [];
  print(newList);
  newList.add(12);
  // check the value of new list
  print(newList);
  // newList[1] = 23; this returns an index error since the object at index 1 is not in a list
  newList.add(23); // this works
  print(newList);
  // now change the value at index 1, and it will work fine
  newList[1] = 34;
  print(newList);
  // add multiple values in a list
  //newList.add(45, 56); // this gives an error
  newList.addAll([43, 54]); // must take an iteratable value
  print(newList);
  // adding a multiple iteratable values with a add method, will form a multidimensional list
  newList.add([43, 54]);
  print(newList);
  // adding values at a specified index, insert pushes other values ahead
  newList.insert(3, 30);
  newList.insert(5, 50);
  print(newList);
  newList.insertAll(6, [40, 80, 100]);
  print(newList);
  // creating a mixed value list
  var mixedList = [1, 2, "Machu", true, "waporo", 47];
  print(mixedList);
  print(mixedList.runtimeType);
  // remove item from a list
  var removed1 = mixedList.remove("Machu");
  print(mixedList);
  // removing a value that exists in a list returns a true,
  // that doesn't exist in the list returns a false
  var removed2 = mixedList.remove("Machu");
  print(mixedList);
  mixedList.removeAt(mixedList.length - 1);
  print(mixedList);
  print("Removed1 is $removed1\nRemoved2 is $removed2");
}

void eigth_func(){
  // Maps, or Dicts, or Objects in JS, Here gives a basic knowledge of working
  // with json data and handling API objects
  print("\n\nThis is for Maps as are called Dicts in Python.\n\n");
  // First Map
  var toppings = {"john": "Pepperoni", "Anna": 23};
  // Show values of a map
  print(toppings);
  print(toppings["john"]);
  // show keys
  print(toppings.keys);
  print(toppings.values);
  // show length
  print("Toppings have the length of ");
  print(toppings.length);
  // Add Something to a map
  toppings["Tim"] = "Sausage";
  print(toppings);
  print(toppings.values);
  print(toppings.keys);
  // Add Many things to a map
  toppings.addAll({"Candy": "Chicken", "Mary": "Beef Pitza"});
  print(toppings);
  print(toppings.values);
  print(toppings.keys);
  // Remove something from a map
  print(toppings.runtimeType);
  toppings.remove("Tim");
  print(toppings);
  // remove everything and empty a map
  toppings.clear();
  print(toppings);
}

void main(){
  first_func();
  second_func();
  third_func();
  fourth_func();
  fifth_func();
  sixth_func();
  seventh_func();
  eigth_func();
}