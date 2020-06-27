import 'package:flutter/material.dart';

import '../utils.dart';

class ItemDropDown extends StatefulWidget {
  @override
  _ItemDropDownState createState() => _ItemDropDownState();
}

class _ItemDropDownState extends State<ItemDropDown> {
  List<String> itemvalues = [
    'CCTV camera',
    'Tv',
    'Vacuum cleaner',
    'speaker',
    'Wifi',
    'fridge',
  ];

  String value = 'Wifi';

  List<DropdownMenuItem> getDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in itemvalues) {
      var newItem = DropdownMenuItem(child: Text(currency), value: currency);

      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.safeBlockVertical * 5,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: kLightBlueColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            value: value,
            iconSize: SizeConfig.safeBlockVertical * 2.5,
            items: getDropdownItems(),
            onChanged: (value) {
              setState(() {
                value = value;
              });
            }),
      ),
    );
  }
}
