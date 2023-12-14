import 'dart:math';

int get_random({int? min, required int max}){
  if (min == null){
    min = 0;
  }
  Random random = new Random();
  // since random gets a range within a given limit eg for 10, it will take 0 - 9, 10 values
  return min + random.nextInt((max + 1) - min);
}

void main(){
  Random random = new Random();
  print(random.nextInt(100));
  print("Random between 2 and 6 is ${get_random(max: 6, min: 2)}");
  print(sqrt(9));
  print(log(4));
  print(log10e);
  print(exp(1));
  print(3/0); // for checking exceptions, but it returns infinity

  print(int.parse("hello")); // this will throw an exception

}

