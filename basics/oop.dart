class Person {
  String? name = '';
  int? age;
  Person(String? _name, int _age) {
    this.name = _name;
    this.age = _age;
  }
  // Person(){
  // }
  void get_info() {
    if (this.name == '' || this.name == null) {}
    print("Name: ${this.name}\nAge: ${this.age}");
  }
}

// handling constructors
class Mtu extends Person {
  Mtu(String name, int age) : super(name, age) {}
}

void main() {
  Mtu machu = new Mtu("Machue", 21);
  machu.get_info();
}


// abstract class MtuInfo {

// }