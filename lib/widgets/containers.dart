import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  final String containerImage;
  const MyContainer({super.key, required this.containerImage});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 231, 221, 224),
          borderRadius: BorderRadius.all(Radius.circular(35)),
          border: Border(
              bottom: BorderSide(color: Colors.pinkAccent),
              top: BorderSide(color: Colors.pinkAccent),
              right: BorderSide(color: Colors.pinkAccent),
              left: BorderSide(color: Colors.pinkAccent))),
      child: Padding(
        padding: const EdgeInsets.all(19),
        child: Image(
          image: AssetImage(widget.containerImage),
        ),
      ),
    );
  }
}
