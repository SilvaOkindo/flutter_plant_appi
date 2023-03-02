import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/widgets/button_widget.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

import '../utils/dimensions.dart';
import '../widgets/add_text_widget.dart';
import '../widgets/plant_care_tile.dart';

class AddingPlantPage extends StatefulWidget {
  const AddingPlantPage({super.key});

  @override
  State<AddingPlantPage> createState() => _AddingPlantPageState();
}

class _AddingPlantPageState extends State<AddingPlantPage> {
  double screenWidth = Get.context!.width;
  double screenHeight = Get.context!.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: Dimensions.topHeight,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: ProsteBezierCurve(
                      position: ClipPosition.bottom,
                      list: [
                        BezierCurveSection(
                          start:  Offset(0, Dimensions.height150),
                          top: Offset(screenWidth / 2, Dimensions.height200),
                          end: Offset(screenWidth, Dimensions.height150),
                        ),
                      ],
                    ),
                    child: Container(
                      height:Dimensions.height200,
                      color: Colors.green,
                    ),
                  ),
                  Positioned(
                    left: Dimensions.height100,
                    top: -30,
                    child: Container(
                      height: Dimensions.height250,
                      width: Dimensions.height200,
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/potted_plant.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                      top:  Dimensions.height35,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  const Positioned(
                      right: 120,
                      bottom: 35,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.camera_enhance_outlined,
                          size: 30,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(18),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Plant\'s name',
                    hintStyle: TextStyle(color: Colors.green)),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AddTextWidget(
                    text: 'Add type',
                  ),
                  AddTextWidget(
                    text: 'Add location',
                  ),
                ],
              ),
            ),
             SizedBox(
              height: Dimensions.height20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              //height: 200,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      'plant care',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 18),
                    ),
      
                    SizedBox(
                      height: Dimensions.height20,
                    ),
      
                    // plant care tile
                    const PlantCareTile(
                      icon: Icons.water_drop_outlined,
                      activity: 'Watering',
                      duration: 'once a week',
                    ),
                    const PlantCareTile(
                      icon: Icons.wb_sunny_outlined,
                      duration: 'moderate',
                      activity: 'Light',
                    ),
                    //SizedBox(height: Dimensions.height150,),

                     const PlantCareTile(
                      icon: Icons.water_drop_outlined,
                      activity: 'Watering',
                      duration: 'once a week',
                    ),
                    const PlantCareTile(
                      icon: Icons.wb_sunny_outlined,
                      duration: 'moderate',
                      activity: 'Light',
                    ),
                    SizedBox(height: Dimensions.height100,),
                    const Center(child: ButtonWidget(color: Colors.green, text: "Save")),
                   

                
           
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
