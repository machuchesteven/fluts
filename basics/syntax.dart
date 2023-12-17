void main() {
  List names = [];
  names.add("John");
  names.add("Miriam");
  print(names);
  print("Starting");

  int index = 0;
  print("Shorthand syntax for flutter widgets: \n\n\n\\n\n\n");
  var items = ["One", "Two", "Three", "Four", "Five"];
  print("The index is $index");
  for (String name in items) {
    print(name);
    print(items.indexOf(name));
  }
  index =
      index == items.length - 1 ? 0 : index + 1; // Got me a little confused,
  // had to bring it here
  print(index);
}
