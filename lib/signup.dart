// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signedup extends StatefulWidget {
  const Signedup({
    super.key,
  });

  @override
  State<Signedup> createState() => _SignedupState();
}

class _SignedupState extends State<Signedup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SignUp")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          // key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/signup.png'),
                      width: 70,
                      height: 70,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Apply Registration',
                      style: GoogleFonts.robotoMono(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                'Sign Up',
                style: GoogleFonts.robotoSerif(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your first name",
                  fillColor: Colors.grey[200],
                  filled: true,
                  labelText: "First Name",
                  prefixIcon: const Icon(Icons.person),
                  labelStyle: const TextStyle(color: Colors.black),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide:
                        BorderSide(color: Color.fromARGB(141, 207, 203, 203)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(141, 194, 194, 194))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your last name",
                  fillColor: Colors.grey[200],
                  filled: true,
                  labelText: "Last Name",
                  prefixIcon: const Icon(Icons.person),
                  labelStyle: const TextStyle(color: Colors.black),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide:
                        BorderSide(color: Color.fromARGB(141, 207, 203, 203)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(141, 194, 194, 194))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  fillColor: Colors.grey[200],
                  filled: true,
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  suffixText: "@gmail.com",
                  labelStyle: const TextStyle(color: Colors.black),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide:
                        BorderSide(color: Color.fromARGB(141, 207, 203, 203)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(141, 194, 194, 194))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                  hintText: "Phone no",
                  fillColor: Colors.grey[200],
                  filled: true,
                  labelText: "Contact No",
                  prefixIcon: const Icon(Icons.phone),
                  labelStyle: const TextStyle(color: Colors.black),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide:
                        BorderSide(color: Color.fromARGB(141, 207, 203, 203)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(141, 194, 194, 194))),
                ),
                initialCountryCode: 'PK', //default contry code, NP for Nepal
                onChanged: (phone) {
                  //when phone number country code is changed
                  print(phone.completeNumber); //get complete number
                  print(phone.countryCode); // get country code only
                  print(phone.number); // only phone number
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                      helperText: "Minimum Use 8 Character",
                      helperStyle:
                          const TextStyle(color: Colors.black, fontSize: 14),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.visibility_off_outlined),
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelStyle:
                          const TextStyle(color: Colors.black, fontSize: 12),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(141, 207, 203, 203))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(141, 207, 203, 203))))),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: RawMaterialButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const Login()));
                    Navigator.pushNamed(context, "/loggedin");
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.robotoMono(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
