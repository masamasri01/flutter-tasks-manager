import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sat8_10/Views/widgets/TaskWidget.dart';
import 'package:sat8_10/task_management/models/task_model.dart';

class complete extends StatelessWidget {
  Function function;
  complete(this.function);

  @override
  Widget build(BuildContext context) {
    TaskModel taskModel;
    // TODO: implement build
    return ListView.builder(
      itemCount: tasks.where((element) => element.iscomplete).length,
      itemBuilder: (context, index) {
        return TaskWidget(
            tasks.where((e) => e.iscomplete).toList()[index]);
      },
    );
    throw UnimplementedError();
  }
}
