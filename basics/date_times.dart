// Delaing with dates and times in dart

void main() {
  print("We deal with the Dates and Times");
  final now = new DateTime.now();

  print(now);
  print(now.add(new Duration(days: 5))); // return a value, but leaves the variable unaffected
  print(now);
}
