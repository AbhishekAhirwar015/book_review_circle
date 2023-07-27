import 'package:ebooksapp/widgets/our_container.dart';
import 'package:flutter/material.dart';
import 'package:ebooksapp/utils/ourTheme.dart';
import 'package:ebooksapp/screens/signup/signup.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: Text(
              "Log In",
              style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.alternate_email,
                color: Color.fromARGB(255, 119, 124, 135),
              ),
              hintText: 'email'),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Color.fromARGB(255, 119, 124, 135),
              ),
              hintText: 'password'),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 250,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 119, 124, 135)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Set the border radius here
                ),
              ),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: TextButton(
            child: Text("Don't have account signUp Here"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 119, 124, 135))),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignUp(),
              ));
            },
          ),
        )
      ]),
    );
  }
}
