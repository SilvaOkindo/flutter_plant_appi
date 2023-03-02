import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class WateringTile extends StatelessWidget {
  final IconData icon;
  final String plantName;
  final String waterNeeded;
  final String imageUrl;
  final Color color;
  final Color? textColors;
  //final Color? iconColors;

  const WateringTile({
    super.key,
    required this.icon,
    required this.plantName,
    required this.waterNeeded,
    required this.imageUrl,
    required this.color,
    this.textColors = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height: MediaQuery.of(context).size.height * 0.10,
      //color: Colors.amber,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // icon and text

          Row(
            children: [
              Icon(icon, size: 40, color: textColors),

               SizedBox(
                width:  Dimensions.height10,
              ),

              // text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plantName,
                    style: TextStyle(
                        fontSize: 16,
                        color: textColors,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    waterNeeded,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: textColors),
                  ),
                ],
              ),
            ],
          ),

          // image

          Container(
            height: Dimensions.height70,
            width: Dimensions.width70,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageUrl))),
          )
        ],
      ),
    );
  }
}
