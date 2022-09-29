import 'dart:js';

import 'package:flutter/material.dart';
import 'package:prov/provider/todo_provider.dart';
import 'package:prov/views/Student.dart';
import 'package:prov/views/Teacher.dart';

import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  TextEditingController Username = TextEditingController();
  TextEditingController UserAddres = TextEditingController();
  TextEditingController UserNumber = TextEditingController();
  TextEditingController UserBloodGroup = TextEditingController();
  TextEditingController Techname = TextEditingController();
  TextEditingController TechAddres = TextEditingController();
  TextEditingController TechNumber = TextEditingController();
  TextEditingController TechDepartment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TeacherProvider>(context);
    final todo = Provider.of<StudentProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Student & Teacher Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              title: Text('Teacher Info'),
                              content: Container(
                                height: 400,
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: Techname,
                                      decoration: InputDecoration(
                                          labelText: 'Name',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: TechAddres,
                                      decoration: InputDecoration(
                                          labelText: 'Address',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: TechNumber,
                                      decoration: InputDecoration(
                                          labelText: 'Number',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: TechDepartment,
                                      decoration: InputDecoration(
                                          labelText: 'Department',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          final Tname = Techname.text;
                                          final Taddress = TechAddres.text;
                                          final Tnumber = TechNumber.text;
                                          final Tdepartment =
                                              TechDepartment.text;
                                          todos.addnotetodo(Tname, Taddress,
                                              Tnumber, Tdepartment);
                                          Techname.clear();
                                          TechAddres.clear();
                                          TechNumber.clear();
                                          TechDepartment.clear();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Teacher()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Input Data',style: TextStyle(fontSize: 18),),
                                        )),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        " Teacher ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ))),
            SizedBox(height: 20),
            Container(
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              title: Text('Student Info'),
                              content: Container(
                                height: 400,
                                child: Column(
                                  children: [
                                    Form(
                                      autovalidateMode: AutovalidateMode.always,
                                      child: TextField(
                                        controller: Username,
                                        decoration: InputDecoration(
                                            labelText: 'Name',
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)))),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: UserAddres,
                                      decoration: InputDecoration(
                                          labelText: 'Address',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: UserNumber,
                                      decoration: InputDecoration(
                                          labelText: 'Number',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: UserBloodGroup,
                                      decoration: InputDecoration(
                                          labelText: 'Blood Group',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          final name = Username.text;
                                          final address = UserAddres.text;
                                          final number = UserNumber.text;
                                          final blood_group =
                                              UserBloodGroup.text;
                                          todo.addnotetodo(name, address,
                                              number, blood_group);
                                          Username.clear();
                                          UserAddres.clear();
                                          UserNumber.clear();
                                          UserBloodGroup.clear();

                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Student()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Input Data',style: TextStyle(fontSize: 18),),
                                        )),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(" Student ",style: TextStyle(fontSize: 20),),
                    ))),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Teacher()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Teacher List',style: TextStyle(fontSize: 20),),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Student()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Student List',style: TextStyle(fontSize: 20),),
                )),
          ],
        ),
      ),
    );
  }
}
