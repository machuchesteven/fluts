import 'dart:io';

void main() {
  File f = new File("async.txt");
  write_to_file(f, "This is async .text appended");
}

void write_to_file(File f, String s) async {
  await f.writeAsString(s);
  await f.writeAsString("This is another", mode: FileMode.append);
  await f.writeAsString("Another", mode: FileMode.append);
}
