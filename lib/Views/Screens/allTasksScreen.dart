import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sat8_10/Views/widgets/TaskWidget.dart';
import 'package:sat8_10/task_management/models/task_model.dart';

class All extends StatelessWidget {
  Function function;
  All(this.function);
  @override
  Widget build(BuildContext context) {
    TaskModel taskModel;

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(tasks[index]);
      },
    );
    throw UnimplementedError();
  }
}
