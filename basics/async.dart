import 'dart:io';

void main() async {
  File f = new File("async.txt");
  try {
    print(await get_server_response());
  } catch (Exception) {
    print("Exception occured ");
  }
  print(write_to_file(f, "This is async .text appended"));

  var result = await Process.run('dir', []);
  print(result.stdout);
}

Future<int> write_to_file(File f, String s) async {
  // with async await the files will wait for each transaction to complete before executing  another
  await f.writeAsString(s);
  await f.writeAsString("This is another", mode: FileMode.append);
  await f.writeAsString("Another", mode: FileMode.append);
  return await f.length();
}

// simulate a server request to the database fo delay
Future<String?> get_server_response() {
  return new Future.delayed(new Duration(seconds: 5), () {
    return "Server response";
  });
}
