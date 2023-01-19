import 'package:flutter/material.dart';
import 'package:lab06/registerpage.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: SafeArea(
          child: Form(
        key: _formkey,
        child: ListView(
          children: [
            Text("Email"),
            TextFormField(
              controller: _emailcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกอีเมล";
                }
              },
            ),
            Text("Password"),
            TextFormField(
              controller: _passwordcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกรหัส";
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print("Ok");
                  }
                },
                child: const Text("Login")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registerpage()));
                },
                child: const Text("Register")),
          ],
        ),
      )),
    );
  }
}
