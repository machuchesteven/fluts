import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Newspage extends StatefulWidget {
  const Newspage({super.key});

  @override
  State<Newspage> createState() => __NewspageState();
}

class __NewspageState extends State<Newspage> {
  List<dynamic> cinemas = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
            itemCount: cinemas.length,
            itemBuilder: (context, index) {
              final cinema = cinemas[index];
              final name = cinema['name'];
              final id = cinema['id'];
              print(name);
              return ListTile(
                leading: CircleAvatar(child: Text("$id")),
                title: Text(name),
                subtitle: Text('${cinema['info']}'),
                );
            }
          ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          fetchNews();
        },
      ),
    );
  }
  void fetchNews() async {
    final url = Uri.parse('http://192.168.196.106:8000/api/cinemas');
    final response = await http.get(url);
    print(response.statusCode);
    final body = response.body;
    final json = jsonDecode(body);
    print(json.toString());
    print("Users fetched news");
    setState(() {
      cinemas = json;
    });
  }
}