import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final void Function()? ontap;
  const MyButton({super.key, required this.ontap});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: widget.ontap,
        child: Container(
          alignment: Alignment.center,
          height: 75,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border(
                  bottom: BorderSide(color: Colors.pinkAccent, width: 2),
                  top: BorderSide(color: Colors.pinkAccent, width: 2),
                  right: BorderSide(color: Colors.pinkAccent, width: 2),
                  left: BorderSide(color: Colors.pinkAccent, width: 2))),
          child: const Text(
            "Create Account",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
