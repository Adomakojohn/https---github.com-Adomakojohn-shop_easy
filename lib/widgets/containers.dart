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

class ShoeSizeContainer extends StatefulWidget {
  final String containerText;
  const ShoeSizeContainer({super.key, required this.containerText});

  @override
  State<ShoeSizeContainer> createState() => _ShoeSizeContainerState();
}

class _ShoeSizeContainerState extends State<ShoeSizeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 80,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(11)),
          border: Border(
              bottom: BorderSide(color: Colors.pinkAccent),
              top: BorderSide(color: Colors.pinkAccent),
              right: BorderSide(color: Colors.pinkAccent),
              left: BorderSide(color: Colors.pinkAccent))),
      child: Padding(
          padding: const EdgeInsets.all(7),
          child: Center(
              child: Text(
            widget.containerText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ))),
    );
  }
}
