void main() {
  var string = my_string();
  print(string);
  print(fullname("Machu", "Kipapai"));
  // print(fullname(second_name: "Kipapai", first_name: "Kipapai")); // this dont work since they 
  // positional arguments not named arguments
  print(say_hello("Kibopa"));
  print(say_world("say"));
  print(say_world("Hello", second_name: "To the world!"));
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
// with args and keyword arguments