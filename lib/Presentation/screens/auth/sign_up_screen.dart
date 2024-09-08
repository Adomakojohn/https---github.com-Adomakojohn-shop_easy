import 'package:ecommerce_project/Presentation/widgets/containers.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create an",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 25,
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
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hintText: 'enter password',
                    contentPadding: EdgeInsets.all(20),
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    filled: true,
                    fillColor: Color.fromARGB(255, 251, 248, 248),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.pinkAccent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hintText: 'confirm password',
                    contentPadding: EdgeInsets.all(20),
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    filled: true,
                    fillColor: Color.fromARGB(255, 251, 248, 248),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.pinkAccent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(' By clicking on create account you agree to the'),
                GestureDetector(
                  child: const Text(
                    ' privacy rules ',
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'bottomnavscreen'),
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
                        "Create Account",
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
                      "I already have an account ? ",
                      style: TextStyle(fontSize: 17),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'signupscreen'),
                      child: const Text(
                        "Log in",
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
