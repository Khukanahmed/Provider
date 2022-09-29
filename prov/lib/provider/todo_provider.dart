import 'package:flutter/cupertino.dart';
import 'package:prov/model/todo.dart';

class TeacherProvider extends ChangeNotifier {
  List<Teacherdata> todos = [];
  addnotetodo(name, address, number, department) {
    var newtodo = Teacherdata(
        name: name, address: address, number: number, department: department);
    todos.add(newtodo);
    notifyListeners();

    deletenotetodo(index) {
      todos.removeAt(index);
      notifyListeners();
    }
  }
}

class StudentProvider extends ChangeNotifier {
  List<Studentdata> todos = [];
  addnotetodo(name, address, number, blood_group) {
    var newtodo = Studentdata(
        name: name, address: address, number: number, blood_group: blood_group);
    todos.add(newtodo);
    notifyListeners();

    deletenotetodo(index) {
      todos.removeAt(index);
      notifyListeners();
    }
  }
}


