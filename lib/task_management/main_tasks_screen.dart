import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sat8_10/Views/Screens/allTasksScreen.dart';
import 'package:sat8_10/Views/Screens/completeScreen.dart';
import 'package:sat8_10/Views/Screens/incompleteScreen.dart';

import 'models/task_model.dart';

class MainScreenView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  initalizeTabController() {
    tabController = TabController(length: 3, vsync: this);
  }

  checkTask(TaskModel taskModel) {
    int index = tasks.indexOf(taskModel);
    taskModel.iscomplete = !taskModel.iscomplete;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initalizeTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Task Management'),
          bottom: TabBar(
            controller: tabController,
            tabs: [
              Tab(text: 'All Tasks'),
              Tab(text: 'Completed Tasks'),
              Tab(text: 'Incompleted Tasks'),
            ],
          )),
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text('Masa Masri'),
            accountEmail: Text('masa@stu.najah.edu'),
            currentAccountPicture: CircleAvatar(
              child: Text('M'),
            ),
          ),
          ListTile(
              title: Text('All Tasks'),
              subtitle: Text('Show all'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.safety_check),
              onTap: () {
                tabController.animateTo(0);
                Navigator.pop(context);
              }),
          ListTile(
              title: Text('Completed Tasks'),
              subtitle: Text('Edit'),
              leading: Icon(Icons.people),
              onTap: () {
                tabController.animateTo(1);
                Navigator.pop(context);
              }),
          ListTile(
              title: Text('Uncompleted Tasks'),
              subtitle: Text('Edit '),
              leading: Icon(Icons.settings),
              onTap: () {
                tabController.animateTo(02);
                Navigator.pop(context);
              }),
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        All(checkTask),
        complete(checkTask),
        incomplete(checkTask),
      ]),
    );

    throw UnimplementedError();
  }
}
