import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //for the 1st time ever running of app
  void createInitialData() {
    toDoList = [
      ['List number 1', false],
      ['List number 2', false]
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
