void main() {
  var string = my_string();
  print(string);
  print(fullname("Machu", "Kipapai"));
  // print(fullname(second_name: "Kipapai", first_name: "Kipapai")); // this dont work since they 
  // positional arguments not named arguments
  print(say_hello("Kibopa"));
  print(say_world("say"));
  print(say_world("Hello", second_name: "To the world!"));
  print(my_info(name: "Machuche", age: 24));
  print(my_info(name: "Gloria", age: 18, sex: "Female"));
  my_anonymous(3);
  my_anonymous_loops();
  // arrow functions
  print(my_arrow_square(47));
  print(myinterest(200000, 2.4, 4));
}

// unlike python, you can put anywhere the string, since it is compiled
String my_string(){
  return "My String function called";
}

// with  variables of the same type
String fullname(String first_name, second_name){
  return first_name + " " + second_name;
}

// with optional parameters
String say_hello(String first_name, [next_name]){
  return "$first_name $next_name";
}

// named arguments of a method
String say_world(String first_name, {String second_name = "world"}){
  return first_name + " " + second_name;
}
// using required named parameters in dart

String my_info({required String name, required int age, String sex = "male",}){
  // this will enforce a person to add the name and age
  return "My name is $name and age is $age and Sex is $sex";
}

// anonymous function in dart
// anonymous function is a function without a name
// it is also called a lambda function
void my_anonymous(int number){
  var cube = (int number){
    return (number * number* number);
  };
  print("The cube of $number is ${cube(number)}");
}

// anonymous function in loops
void my_anonymous_loops(){
  var list = [];
  for (var i = 0; i < 10; i++) {
    list.add(i);
  }
  list.forEach((element) {
    print("The element is $element ");
    });
}

// arrow functions in dart
int my_arrow_square(int number) => number * number;

// arrow functions in double lines
double myinterest(int principal, double rate, double interest_rate) =>
  principal * rate * interest_rate / 100;

