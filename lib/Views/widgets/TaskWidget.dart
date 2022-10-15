import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sat8_10/task_management/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;
  Function? function;
  TaskWidget(this.taskModel, this.function);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CheckboxListTile(
      value: taskModel.iscomplete,
      onChanged: (v) {
        function!(taskModel);
      },
      title: Text(taskModel.Title),
    );
    throw UnimplementedError();
  }
}
