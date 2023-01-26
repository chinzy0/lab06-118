import 'package:flutter/material.dart';
import 'package:lab06/login.dart';
import 'package:lab06/services/auth_service.dart';

class successful extends StatefulWidget {
  const successful({super.key});

  @override
  State<successful> createState() => _successfulState();
}

class _successfulState extends State<successful> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("successfully"),
      ),
      body: SafeArea(
          child: Form(
        child: ListView(
          children: [
            Text("successfully"),
            Icon(
              Icons.check_outlined,
              color: Colors.green,
            ),
            FloatingActionButton(
              onPressed: () {
                AuthService.signOutUser();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginpage()));
              },
              child: Icon(Icons.logout_rounded),
              backgroundColor: Colors.green,
            ),
          ],
        ),
      )),
    );
  }
}
