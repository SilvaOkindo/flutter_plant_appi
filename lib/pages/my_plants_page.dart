// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/plant_detail_page.dart';

import '../utils/dimensions.dart';
import '../widgets/plant_tile.dart';
import 'settings_page.dart';

class MyPlantsPage extends StatefulWidget {
  const MyPlantsPage({super.key});

  @override
  State<MyPlantsPage> createState() => _MyPlantsPageState();
}

class _MyPlantsPageState extends State<MyPlantsPage> {
  // DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 250, 252),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'My Plants',
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          backgroundColor: const Color.fromARGB(255, 247, 250, 252),
          elevation: 0.0,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => const SettingsPage());
                },
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.green,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: Dimensions.plantHeight,
                ),
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) {
                  return const PlantTile(
                    plantName: "Aster",
                    botanicName: "Barrel Cactus",
                    imageUrl: 'assets/images/potted_plant.png',
                  );
                }),
          ),
        ));
  }
}
