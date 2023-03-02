import 'package:flutter/material.dart';
import 'package:plant_app/utils/dimensions.dart';

class PlantTile extends StatelessWidget {
  const PlantTile({super.key, required this.plantName, required this.botanicName, required this.imageUrl});

  final String plantName;
  final String botanicName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: Dimensions.plantHieightWidget,
      width: MediaQuery.of(context).size.width * 0.48,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 243, 243),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                plantName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  botanicName,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            width: MediaQuery.of(context).size.width * 0.44,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 220, 227),
                borderRadius: BorderRadius.circular(10),
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageUrl))),
          )
        ],
      ),
    );
  }
}
