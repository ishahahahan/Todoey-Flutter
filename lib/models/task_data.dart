import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Get Badminton'),
    Task(name: 'Yo')
  ];

}