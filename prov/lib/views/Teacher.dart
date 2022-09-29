import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/todo_provider.dart';

class Teacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TeacherProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Info'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todos.todos.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Name: ${todos.todos[index].name}",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Addres: ${todos.todos[index].address}",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Number: ${todos.todos[index].number}",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Department: ${todos.todos[index].department}",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
