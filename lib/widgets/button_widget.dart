import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 180,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12)),
      child:  Center(
          child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      )),
    );
  }
}
