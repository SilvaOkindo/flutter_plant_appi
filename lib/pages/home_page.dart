import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

import '../utils/colors_util.dart';
import '../utils/dimensions.dart';
import '../widgets/watering_widget.dart';
import '../utils/date_utils.dart' as datetime_util;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DateTime> currentWeekList = List.empty();
  DateTime currentDatetime = DateTime.now();
  late ScrollController scrollController;

  @override
  void initState() {
    currentWeekList = datetime_util.DateUtils.daysInMonth(currentDatetime);
    currentWeekList.sort((a, b) => a.day.compareTo(b.day));
    currentWeekList = currentWeekList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 1.0 * currentDatetime.day);
    super.initState();
  }

  Widget capsuleView(int index) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(4, 4, 0, 0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentDatetime = currentWeekList[index];
            });
          },
          child: Container(
            width: Dimensions.topViewWidth,
            height: Dimensions.topViewHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: (currentWeekList[index].day != currentDatetime.day)
                    ? Border.all(color: Colors.transparent, width: 0)
                    : Border.all(color: Colors.green, width: 2)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    datetime_util
                        .DateUtils.weekdays[currentWeekList[index].weekday - 1],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: HexColor("465876")),
                  ),
                  Text(currentWeekList[index].day.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: HexColor("465876"))),
                ],
              ),
            ),
          ),
        ));
  }

  Widget hrizontalCapsuleListView() {
    return SizedBox(
      //width: width,
      //margin: EdgeInsets.symmetric(horizontal: 0),
      height: Dimensions.capsuleheight,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: currentWeekList.length,
        itemBuilder: (BuildContext context, int index) {
          return capsuleView(index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //print('screen height: ' + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              //margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Container(
                margin: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    // date and settings icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          datetime_util
                              .DateUtils.months[currentDatetime.month - 1],
                          style: const TextStyle(
                              fontSize: 20, color: Colors.green),
                        ),
                        IconButton(
                          icon: const Icon(Icons.settings,
                              size: 30, color: Colors.green),
                          onPressed: () {},
                        )
                      ],
                    ),

                    // calendar
                    hrizontalCapsuleListView()
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(18),
              height: MediaQuery.of(context).size.height * 0.80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),

                  // watering tiles

                  SizedBox(
                    height: Dimensions.height10,
                  ),

                  const WateringTile(
                      icon: Icons.water_drop_outlined,
                      imageUrl:
                          'assets/images/monstera-deliciosa-plant-pot.jpg',
                      plantName: 'Water Aster',
                      waterNeeded: '200-300 ml',
                      color: Color.fromARGB(
                        255,
                        104,
                        202,
                        107,
                      )),

                   SizedBox(
                    height: Dimensions.height20,
                  ),

                  const WateringTile(
                      icon: Icons.water_drop_outlined,
                      imageUrl:
                          'assets/images/peace-lily-plant-terracotta-pot-home-decor-object.jpg',
                      plantName: 'Repot Steven',
                      waterNeeded: 'soil 400g',
                      color: Color.fromARGB(
                        255,
                        104,
                        202,
                        107,
                      )),

                   SizedBox(
                    height:  Dimensions.height20,
                  ),

                  const Text(
                    'Tomorrow',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),

                   SizedBox(
                    height:  Dimensions.height10,
                  ),

                  const WateringTile(
                      textColors: Colors.black,
                      icon: Icons.grass_outlined,
                      imageUrl:
                          'assets/images/monstera-deliciosa-plant-pot.jpg',
                      plantName: 'Water Laurel',
                      waterNeeded: '200-300 ml',
                      color: Color.fromARGB(255, 233, 239, 240)),

                   SizedBox(
                    height:  Dimensions.height20,
                  ),

                  const WateringTile(
                      textColors: Colors.black,
                      icon: Icons.water_drop_outlined,
                      imageUrl:
                          'assets/images/peace-lily-plant-terracotta-pot-home-decor-object.jpg',
                      plantName: 'Fertilizer Scarlet',
                      waterNeeded: '50g',
                      color: Color.fromARGB(255, 233, 239, 240)),

                  SizedBox(
                    height:  Dimensions.height20
                  ),
                  // this week

                  const Text(
                    'This Week',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),

                  // watering tiles

                  const SizedBox(
                    height: 10,
                  ),

                  const WateringTile(
                      textColors: Colors.black,
                      icon: Icons.grass_outlined,
                      imageUrl:
                          'assets/images/monstera-deliciosa-plant-pot.jpg',
                      plantName: 'Water Aster',
                      waterNeeded: '200-300 ml',
                      color: Color.fromARGB(255, 233, 239, 240)),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
