import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sat8_10/Views/widgets/TaskWidget.dart';
import 'package:sat8_10/task_management/models/task_model.dart';

class incomplete extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _incompleteState();
}

class _incompleteState extends State<incomplete> {
  checkTask(TaskModel taskModel) {
    int index = tasks.indexOf(taskModel);
    tasks[index].iscomplete = !tasks[index].iscomplete;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TaskModel taskModel;
    // TODO: implement build
    return ListView.builder(
      itemCount: tasks.where((element) => !element.iscomplete).length,
      itemBuilder: (context, index) {
        return TaskWidget(
            tasks.where((e) => !e.iscomplete).toList()[index], checkTask);
      },
    );
    throw UnimplementedError();
  }
}
