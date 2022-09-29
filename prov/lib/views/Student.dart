import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/todo_provider.dart';

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<StudentProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Student Info'),
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
                    "Adress: ${todos.todos[index].address}",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Number: ${todos.todos[index].number}",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Blood Group: ${todos.todos[index].blood_group}",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
