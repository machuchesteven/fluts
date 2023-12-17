import 'dart:io';

void main() {
  File f = new File("async.txt");
  print(write_to_file(f, "This is async .text appended"));
}

Future<int> write_to_file(File f, String s) async {
  // with async await the files will wait for each transaction to complete before executing  another
  await f.writeAsString(s);
  await f.writeAsString("This is another", mode: FileMode.append);
  await f.writeAsString("Another", mode: FileMode.append);
  return await f.length();
}
