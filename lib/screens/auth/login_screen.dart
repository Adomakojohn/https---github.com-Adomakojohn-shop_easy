import 'package:ecommerce_project/widgets/containers.dart';
import 'package:ecommerce_project/widgets/mytextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  void signUserIN() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailcontroller.text,
      password: passwordcontroller.text,
    );
  }

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
                MyTextfield(
                    keyboardtype: TextInputType.emailAddress,
                    autoCorrect: true,
                    enablesuggestions: true,
                    controller: emailcontroller,
                    hintText: 'enter username or email',
                    prefixIcon: const Icon(Icons.person_4),
                    obscureText: false),
                const SizedBox(
                  height: 26,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MyTextfield(
                        autoCorrect: false,
                        enablesuggestions: false,
                        controller: passwordcontroller,
                        hintText: 'enter password',
                        prefixIcon: const Icon(Icons.lock_rounded),
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        obscureText: true),
                    GestureDetector(
                      child: const Text(
                        "Forgot password ?",
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: GestureDetector(
                    onTap: signUserIN,
                    child: Container(
                      alignment: Alignment.center,
                      height: 75,
                      width: double.infinity,
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
                        "Login",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[900],
                        height: 2,
                        indent: 108,
                        endIndent: 8,
                      ),
                    ),
                    const Text("or continue with"),
                    Expanded(
                      child: Divider(
                        color: Colors.grey[900],
                        height: 2,
                        indent: 8,
                        endIndent: 108,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyContainer(
                      containerImage: "assets/images/google_image.png",
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    MyContainer(
                      containerImage: "assets/images/apple.png",
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    MyContainer(
                      containerImage: "assets/images/facebook.png",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Have an account ? ",
                      style: TextStyle(fontSize: 17),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'signupscreen'),
                      child: const Text(
                        "Sign Up",
                        style:
                            TextStyle(color: Colors.pinkAccent, fontSize: 20),
                      ),
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
