import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/adding_plant_page.dart';
import 'package:plant_app/pages/my_plants_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;

  void onTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const MyPlantsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[selectedPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddingPlantPage());
        },
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 214, 212, 212),
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          onTap: onTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grass_sharp,
                size: 30,
              ),
              label: 'My plants',
            )
          ]),
    );
  }
}
