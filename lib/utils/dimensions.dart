import 'package:get/get.dart';

class Dimensions {
  // screen height = 843
  // scaling factor = screen height / height of a widget

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double topViewHeight = screenHeight / 8.43;
  static double topViewWidth = screenWidth / (411 / 50);

  static double capsuleheight = screenHeight / (843 / 60);

  static double height10 = screenHeight / (843 / 10);
  static double height20 = screenHeight / (843 / 20);
  static double height15 = screenHeight / (843 / 15);
  static double height70 = screenHeight / (843 / 70);
  static double width70 = screenWidth / (411 / 70);

  // plant widget dimensions
  static double plantHieightWidget = screenHeight / (843 / 254);
  static double plantWidthhtWidget = screenHeight / (411 / 198);
  static double plantHeight = screenHeight / (843 / 265);

  // plant detail

  static double plantDetailHeight1 = screenHeight / (843 / 236);
  static double plantDetailHeight2 = screenHeight / (843 / 592.051);
  static double positionedPlantHeight = screenHeight / (843 / 350);
  static double positionedPlantWidth = screenWidth / (411 / 200);

  // adding screeen dimensions
  static double topHeight = screenHeight / (843 / 220);
  static double height150 = screenHeight / (843 / 150);
  static double height200 = screenHeight / (843 / 200);
  static double height250 = screenHeight / (843 / 250);
  static double height100 = screenHeight / (843 / 100);
  static double height120 = screenHeight / (843 / 100);
  static double height35 = screenHeight / (843 / 35);
  static double height350 = screenHeight / (843 / 350);


}
