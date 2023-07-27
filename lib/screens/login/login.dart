import 'package:ebooksapp/screens/login/localWidget/login_form.dart';
import 'package:ebooksapp/widgets/our_container.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/logo.png'),
            ),
            SizedBox(
              height: 20,
            ),
            LogInForm(),
          ],
        ))
      ]),
    );
  }
}
