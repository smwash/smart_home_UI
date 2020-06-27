import 'package:flutter/material.dart';

import '../utils.dart';

class AccessoryContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Function press;

  AccessoryContainer({this.color, this.icon, this.text, this.press});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.safeBlockHorizontal * 40,
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.black12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 5),
            blurRadius: 20.0,
            spreadRadius: -10.0,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: color,
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: SizeConfig.safeBlockVertical * 4.6,
                  ),
                ),
                SizedBox(width: SizeConfig.safeBlockHorizontal * 3),
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.safeBlockHorizontal * 4.4,
                      color: Colors.black87,
                      letterSpacing: 1.1),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
