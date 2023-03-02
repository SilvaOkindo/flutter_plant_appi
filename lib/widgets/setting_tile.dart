import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 30,
              color: Colors.green,
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          thickness: 1,
          color: Color.fromARGB(255, 221, 219, 219),
        )
      ],
    );
  }
}
