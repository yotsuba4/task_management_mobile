import 'package:flutter/cupertino.dart';
import 'package:task_management_mobile/model/tag.dart';

class Task {
  final String taskName;
  final Tag tag;

  Task.taskChecklist({
    @required this.taskName,
    @required this.tag,
  });
}
