import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text("LogIn Page")),
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                  width: 70,
                  height: 70,
                  image: AssetImage("assets/images/login.png")),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Maintnance",
                    style: GoogleFonts.rubik(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Box",
                    style: GoogleFonts.rubikMonoOne(
                        fontSize: 20, color: Colors.orange),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "Login",
              style:
                  GoogleFonts.rubik(fontSize: 26, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Login page designed by Mathieu\nConnect with them on Dribbble; ",
              style: GoogleFonts.rubik(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 16),
                  hintText: "Enter email",
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Color.fromARGB(255, 112, 112, 112),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  helperText: "Minimum 8 Charater Password",
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 16),
                  hintText: "Enter password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  filled: true,
                  fillColor: Colors.grey[200],
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 235),
            child: Text(
              "Forget Password?",
              style: GoogleFonts.rubik(
                  fontSize: 15, decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Container(
            width: 300,
            height: 50,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 123, 0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Center(
              child: Text(
                "Log In",
                style: GoogleFonts.rubik(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an Account?",
                style: GoogleFonts.rubik(fontSize: 16),
              ),
              RawMaterialButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: ((context) => const Signedup())));
                  Navigator.pushNamed(context, "/signedup");
                  setState(() {});
                },
                child: Text(
                  "Sign up",
                  style: GoogleFonts.rubik(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
