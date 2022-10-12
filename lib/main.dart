import 'dart:developer';

import 'package:flutter/material.dart';
import 'task_management/main_tasks_screen.dart';

void main() {
  runApp(MaterialApp(home: MainScreenView()));
}

class MyFirstUi extends StatelessWidget {
  List<String> comments = ['a', 'a'];

  @override
  Widget build(BuildContext context) {
    appBar:
    AppBar(title: Text('nav'));
    body:
    return Scaffold(
        body: Container(
            child: Column(children: [
      Text('Add comment'),
      Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              onChanged: (value) {
                comments.add(value);
                print(comments);
              },
            ),
          ),
          InkWell(
            child: Icon(Icons.send),
          )
        ],
      ),
      ...comments.map((e) {
        return Text(e);
      }).toList()
    ])));

    throw UnimplementedError();
  }
}
