import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 11,
              right: 11,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 45,
                ),
                const Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/profileP.png",
                    ),
                    height: 160,
                    width: 160,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Account Details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text(
                          'Samuel Rice',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        Divider(),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        Divider(),
                        Text(
                          'Change Avatar or profile picture',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        Divider(),
                        Text(
                          'Account Details',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text(
                          'Help',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        Divider(),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: const Card(
                    surfaceTintColor: Colors.pinkAccent,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(),
                          Text(
                            'Log Out',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
