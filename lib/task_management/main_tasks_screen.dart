import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sat8_10/Views/Screens/allTasksScreen.dart';
import 'package:sat8_10/Views/Screens/completeScreen.dart';
import 'package:sat8_10/Views/Screens/incompleteScreen.dart';

class MainScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    body:
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tasks'),
            bottom: TabBar(tabs: [
              Tab(text: 'All Tasks'),
              Tab(text: 'Completed Tasks'),
              Tab(text: 'Incompleted Tasks'),
            ]),
          ),
          body: TabBarView(children: [
            All(),
            complete(),
            incomplete(),
          ]),
        ));

    throw UnimplementedError();
  }
}
