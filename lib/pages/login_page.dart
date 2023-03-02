import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/pages/main_page.dart';
import 'package:plant_app/widgets/button_widget.dart';

import '../utils/dimensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 247, 247),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            right: -120,
            bottom: -15,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/login.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Plant',
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 117, 7)
                        ),
                      ),
                       Text(
                    'Pal',
                    style: TextStyle(
                      fontSize: 40, 
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 5, 156, 10)
                      ),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const Text(
                    'Your Personal',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  const Text(
                    'Plant Care Helper',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                   SizedBox(
                    height: Dimensions.height350,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const MainPage());
                    },
                    child: const ButtonWidget(
                      color: Color.fromARGB(255, 36, 150, 40),
                      text: 'Login',
                    ),
                  ),
                   SizedBox(
                    height: Dimensions.height20,
                  ),
                  const ButtonWidget(
                    color: Colors.grey,
                    text: 'Signup',
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
