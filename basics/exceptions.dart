// the line used to throw a certain type of exception
class ConversionException implements Exception {
  ConversionException() {
    print("Conersion Error occurred: \n\n\n\n");
  }
}

void convertNumber({required String value}) {
  try {
    double number = double.parse(value);
    print("The number is ${number}");
  } catch (e) {
    throw new ConversionException();
  }
}

void main() {
  print("Handling exceptions before moving to classes with dart");
  String userInput = "2,4";
  try {
    convertNumber(value: userInput);
  } on FormatException catch (e) {
    print("Exception is formatException");
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print("This exception has run");
  }
  // no actual type of exception handled here
}
