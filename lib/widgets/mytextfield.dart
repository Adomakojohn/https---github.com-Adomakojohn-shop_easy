import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final keyboardtype;
  final String hintText;
  final prefixIcon;
  final dynamic suffixIcon;
  final bool obscureText;
  final bool enablesuggestions;
  final bool autoCorrect;
  final TextEditingController? controller;

  const MyTextfield(
      {super.key,
      required this.hintText,
      this.keyboardtype,
      this.prefixIcon,
      this.suffixIcon,
      required this.autoCorrect,
      required this.enablesuggestions,
      this.controller,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableSuggestions: enablesuggestions,
      autocorrect: autoCorrect,
      controller: controller,
      keyboardType: keyboardtype,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        contentPadding: const EdgeInsets.all(20),
        hintStyle: const TextStyle(fontStyle: FontStyle.italic),
        filled: true,
        fillColor: const Color.fromARGB(255, 251, 248, 248),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.pinkAccent)),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.grey)),
      ),
    );
  }
}
