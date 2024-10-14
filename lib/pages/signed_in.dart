import 'package:flutter/material.dart';

class SignedIn extends StatefulWidget {
  String userName;

  SignedIn({
    Key? key,
    required this.userName,

    // the same name will take the same value that we navgiate to the class username
  }) : super(key: key);

  @override
  State<SignedIn> createState() => _SignedInState();
}

class _SignedInState extends State<SignedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome ${widget.userName}"),
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 140,
            ),
          ],
        ),
      ),
    );
  }
}
