import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';

void main() {
  runApp(const LogInPage());
}

class LogInPage extends StatelessWidget {
  // final GlobalKey<FormState> _formkey = GlobalKey();
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/loggedin": (context) => const Login(),
        "/signedup": (context) => const Signedup(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Log In"),
          ),
          body: const Login()),
    );
  }
}
