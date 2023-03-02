import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import '../widgets/plant_care.dart';

class PlantDetailPage extends StatelessWidget {
  const PlantDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(elevation: 0.0, actions: [
          GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.25,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Edit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 18),
                    ),
                    Icon(
                      Icons.edit_outlined,
                      color: Colors.green,
                      size: 30,
                    )
                  ]),
            ),
          )
        ]),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: Dimensions.plantDetailHeight1,
                  padding: const EdgeInsets.all(28),
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Olivia',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      const Text(
                        'Snake plant',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      SizedBox(height: Dimensions.height20),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(width: Dimensions.height20),
                          const Text(
                            'in the ketchen',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 592.051, //Dimensions.plantDetailHeight2,
                  padding: const EdgeInsets.all(28),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: const [
                      PlantCare(),
                      PlantCare(),
                      PlantCare(),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              right: 10,
              child: Container(
                height: Dimensions.positionedPlantHeight,
                width: Dimensions.positionedPlantWidth,
                decoration: const BoxDecoration(
                    //color: Colors.black,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/potted_plant.png'))),
              ),
            )
          ],
        ));
  }
}
