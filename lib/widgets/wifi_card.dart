import 'package:flutter/material.dart';

import '../utils.dart';

class WIfiCard extends StatelessWidget {
  const WIfiCard({
    Key key,
    this.speeds,
    this.icon,
    this.mbs,
  }) : super(key: key);

  final String speeds;
  final IconData icon;
  final String mbs;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
      width: SizeConfig.safeBlockHorizontal * 40,
      height: SizeConfig.safeBlockVertical * 20,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kPrimaryColor,
            kLightBlueColor,
            kPurpleColor,
          ],
        ),
        color: kLightBlueColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            speeds,
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mbs,
                style: TextStyle(
                    fontSize: SizeConfig.safeBlockHorizontal * 4.1,
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Icon(
                  icon,
                  color: kLightBlueColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
