import 'package:flutter/material.dart';
import 'package:smart_home/utils.dart';
import 'package:smart_home/widgets/wifi_card.dart';

class WifiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.blockSizeVertical * 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Huawei Wifi Router',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 6.1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        letterSpacing: 1.1),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 2),
                  Text(
                    'Your network is in active mode with devices connected',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 4.1,
                        color: Colors.black87,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.1),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 4.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WIfiCard(
                    speeds: 'Download Speed',
                    mbs: '69 Mbps',
                    icon: Icons.arrow_downward,
                  ),
                  SizedBox(width: SizeConfig.safeBlockHorizontal * 10),
                  WIfiCard(
                    speeds: 'Upload \nSpeed',
                    mbs: '20 Mbps',
                    icon: Icons.arrow_upward,
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 4.5),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '4 Devices connected',
                  style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 5.1,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical * 4.5),
              ListTileCard(),
              Divider(
                color: kLightBlueColor,
              ),
              ListTileCard(),
              Divider(
                color: kLightBlueColor,
              ),
              ListTileCard(),
              Divider(
                color: kLightBlueColor,
              ),
              ListTileCard(),
              Divider(
                color: kLightBlueColor,
              ),
              ListTileCard(),
              Divider(
                color: kLightBlueColor,
              ),
              ListTileCard(),
              Divider(
                color: kLightBlueColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: kLightBlueColor.withOpacity(0.2),
        ),
        child: Icon(
          Icons.phone_android,
          color: kLightBlueColor,
        ),
      ),
      title: Text(
        'iphone XR',
        style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          fontSize: SizeConfig.safeBlockHorizontal * 5.1,
        ),
      ),
      subtitle: Text('5GHz, 2h ago'),
      trailing: Icon(Icons.more_vert),
    );
  }
}
