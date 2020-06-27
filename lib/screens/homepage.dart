import 'package:flutter/material.dart';

import 'package:smart_home/utils.dart';
import 'package:smart_home/widgets/accesory_container.dart';
import 'package:smart_home/widgets/item_category.dart';
import 'package:smart_home/widgets/item_dropdown.dart';
import 'package:smart_home/widgets/room_category.dart';
import 'package:animations/animations.dart';

import 'wifi_page.dart';

// enum Rooms {
//   livingRoom,
//   kitchen,
//   garage,
//   bedroom1,
//   masterBedroom,
//   outside,
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal * 5),
          child: Icon(
            Icons.short_text,
            color: Colors.black,
            size: SizeConfig.safeBlockVertical * 4.5,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal * 5),
            child: Icon(
              Icons.person_pin,
              color: Colors.black,
              size: SizeConfig.safeBlockVertical * 4.5,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.safeBlockVertical * 1.8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Smart Home \nController',
                      style: TextStyle(
                          height: 1.2,
                          fontSize: SizeConfig.safeBlockHorizontal * 7.5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway'),
                    ),
                    ItemDropDown(),
                  ],
                ),
                SizedBox(height: SizeConfig.safeBlockVertical * 3.3),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AccessoryContainer(
                          color: kYellowColor,
                          icon: Icons.lightbulb_outline,
                          text: 'Light',
                        ),
                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal * 5.3,
                        ),
                        AccessoryContainer(
                          color: kPrimaryColor,
                          icon: Icons.shop,
                          text: 'Media',
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical * 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AccessoryContainer(
                          color: kPinkColor,
                          icon: Icons.videocam,
                          text: 'Camera',
                        ),
                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal * 5.3,
                        ),
                        OpenContainer(
                          openBuilder: (context, _) {
                            return WifiPage();
                          },
                          closedBuilder: (context, VoidCallback openContainer) {
                            return AccessoryContainer(
                              color: kGreenColor,
                              icon: Icons.wifi,
                              text: 'Wifi',
                              press: openContainer,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.safeBlockVertical * 3.5),
                CategorySelector(),
                SizedBox(height: SizeConfig.safeBlockVertical * 2),
                ItemCategory(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
