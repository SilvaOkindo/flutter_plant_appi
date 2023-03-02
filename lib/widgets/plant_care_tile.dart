import 'package:flutter/material.dart';

class PlantCareTile extends StatefulWidget {
  final IconData icon;
  final String duration;
  final String activity;

  const PlantCareTile({super.key, required this.icon, required this.duration, required this.activity});

  
  @override
  State<PlantCareTile> createState() => _PlantCareTileState();
}

class _PlantCareTileState extends State<PlantCareTile> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                //color: Colors.red,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 226, 224),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 233, 229, 229),
                          spreadRadius: 1,
                          blurRadius: 10)
                    ]),
                child:  Icon(
                  widget.icon,
                  size: 36,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   widget.activity,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.duration,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              )
            ],
          ),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeColor: const Color.fromARGB(255, 214, 243, 215),
            activeTrackColor: Colors.green,
            inactiveTrackColor: Colors.grey[300],
          )
        ],
      ),
    );
  }
}
