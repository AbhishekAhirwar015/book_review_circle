import 'package:ebooksapp/widgets/our_container.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: Text(
              "SignUp",
              style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(
                FeatherIcons.user,
                color: Color.fromARGB(255, 119, 124, 135),
              ),
              hintText: 'Username'),
        ),
        const SizedBox(
          height: 20,
        ),
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
              hintText: ' password'),
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
              hintText: 'confirm password'),
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
                "SignUp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
