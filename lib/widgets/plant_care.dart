import 'package:flutter/material.dart';

class PlantCare extends StatelessWidget {
  const PlantCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
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
            child: const Icon(
              Icons.water_drop_outlined,
              size: 36,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Watering',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Once a week',
                style: TextStyle(color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
