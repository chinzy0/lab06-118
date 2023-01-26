import 'package:flutter/material.dart';
import 'package:lab06/login.dart';
import 'package:lab06/services/auth_service.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register page"),
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
                return null;
              },
            ),
            Text("Password"),
            TextFormField(
              controller: _passwordcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกรหัส";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print("Ok");
                    AuthService.registerUser(
                            _emailcontroller.text, _passwordcontroller.text)
                        .then((value) {
                      if (value == 1) {
                        Navigator.pop(context);
                      }
                    });
                  }
                },
                child: const Text("Register")),
          ],
        ),
      )),
    );
  }
}
