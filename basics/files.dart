// Handling files in the filesystem

import 'dart:io';

void main() {
  File f = new File("trial.txt");
  f.writeAsString(
      "trial"); // write without selecting append mode, and since it is not synchronized, it won't hold other objects accessing the file

  f.writeAsStringSync("Hey, apologies!\n", mode: FileMode.append); //
  print("Written to file");
  String txt = f.readAsStringSync();
  print(txt);
  print(f.length()); // gives the file size
}
