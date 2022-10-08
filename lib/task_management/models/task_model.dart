List<TaskModel> tasks = [
  TaskModel('programming', true),
  TaskModel('xxx', false),
  TaskModel('swimming', true),
  TaskModel('read', true),
  TaskModel('travel', false),
  TaskModel('walk', true),
  TaskModel('eat', false),
  TaskModel('draft', true),
  TaskModel('anything', true),
];

class TaskModel {
  late String Title;
  late bool iscomplete;
  TaskModel(this.Title, this.iscomplete);
}
