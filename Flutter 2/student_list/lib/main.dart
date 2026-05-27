import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StudentList(),
    );
  }  
}

class StudentList extends StatelessWidget{
  const StudentList({super.key});
  
  @override
  Widget build(BuildContext context) {
    List<String> Students = ["Mike","Lucas","Dustin","Max","Eleven"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student List View",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: Color.fromRGBO(0, 80, 80, 1)
      ),
      backgroundColor: Color.fromRGBO(0, 181, 181, 0.223),
      body: ListView.builder(
        itemCount: Students.length,
        itemBuilder: (context, index){
          return Card(
            margin: const EdgeInsets.all(10),
            child: 
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(Students[index]),
              subtitle: Text("ABC School"),
              trailing: ElevatedButton(onPressed: () {  },child: const Text("View")),
            ),
          );
        },
        ),
      );
  }
}