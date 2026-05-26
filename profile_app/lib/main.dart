import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProfileScreen(title: 'Profile'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required String title});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile App",style: TextStyle(color: Colors.white70),),
        backgroundColor: Color.fromARGB(255, 2, 25, 69),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person,size: 50,),
            ),
            const SizedBox(height: 20,),
            const Text(
              "Mike Wheeler",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              color: Colors.blue.shade900,
              child: const Text("Basic Flutter UI",style: TextStyle(fontSize: 18,color: Color.fromRGBO(248, 240, 227, 0.749)),),
            )
          ],
        ),
      ),
    );
  }
}