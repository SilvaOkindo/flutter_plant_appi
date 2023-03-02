import 'package:flutter/material.dart';


class AddTextWidget extends StatelessWidget {
  const AddTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      padding: const EdgeInsets.all(8),
      height: 60,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18),
          ),
          const Icon(
            Icons.add,
            color: Colors.green,
            size: 28,
          )
        ],
      ),
    );
  }
}
