// mastering classes in dart


void main() {
  Person person = new Person();
  person.name = "John Doe";
  person.age = 34;
  print("person name is ${person.name} and age is ${person.age}");
  print("Person sex is ${person.sex} and age is ${person.age}");

  print("Declaring the person with constructor");
  ActualPerson machu = ActualPerson();
  machu.showInfo();
  print("Show person info");
  machu.addData("Iconic", "Male", 45);
  machu.showInfo();
}


// class creation
class Person{
  String? name , sex ;
  int? age;
}

// class with constructer
class ActualPerson{
  String? name, sex;
  int? age;
  void addData(String name, sex, int age){
    this.name = name;
    this.sex = sex;
    this.age = age;
  }
  // Functional methods in classes
  void setName(String name){this.name = name;}
  void showInfo(){
    print("Name: $name\nSex: $sex \nAge: $age");
  }
}
// classes without initialization

// going into static and inheritance with dart
