import 'dart:ui';

import 'package:ecommerce_project/screens/bottom_nav_screen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "Back!",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_4_rounded),
                    hintText: 'Username or Email',
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    contentPadding: EdgeInsets.all(20),
                    filled: true,
                    fillColor: Color.fromARGB(255, 251, 248, 248),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.pinkAccent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.pinkAccent)),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hintText: 'enter password',
                    contentPadding: EdgeInsets.all(20),
                    helperText: 'Forgot Password ?',
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    helperStyle: TextStyle(fontSize: 14),
                    filled: true,
                    fillColor: Color.fromARGB(255, 251, 248, 248),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.pinkAccent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.pinkAccent)),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'bottomnavscreen'),
                    child: Container(
                      alignment: Alignment.center,
                      height: 65,
                      width: 140,
                      decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.pinkAccent, width: 2),
                              top: BorderSide(
                                  color: Colors.pinkAccent, width: 2),
                              right: BorderSide(
                                  color: Colors.pinkAccent, width: 2),
                              left: BorderSide(
                                  color: Colors.pinkAccent, width: 2))),
                      child: const Text(
                        "Log In",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 65,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 251, 248, 248),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border(
                              bottom: BorderSide(color: Colors.pinkAccent),
                              top: BorderSide(color: Colors.pinkAccent),
                              right: BorderSide(color: Colors.pinkAccent),
                              left: BorderSide(color: Colors.pinkAccent))),
                    ),
                    Container(
                      height: 65,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 251, 248, 248),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border(
                              bottom: BorderSide(color: Colors.pinkAccent),
                              top: BorderSide(color: Colors.pinkAccent),
                              right: BorderSide(color: Colors.pinkAccent),
                              left: BorderSide(color: Colors.pinkAccent))),
                    ),
                    Container(
                      height: 65,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 251, 248, 248),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border(
                              bottom: BorderSide(color: Colors.pinkAccent),
                              top: BorderSide(color: Colors.pinkAccent),
                              right: BorderSide(color: Colors.pinkAccent),
                              left: BorderSide(color: Colors.pinkAccent))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Have an account ? ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
