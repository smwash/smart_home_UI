import 'package:flutter/material.dart';
import 'package:smart_home/model/item_category.dart';

import '../utils.dart';

class ItemCategory extends StatefulWidget {
  @override
  _ItemCategoryState createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.safeBlockVertical * 28,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            // ItemCategory item = items[index];
            return Container(
              height: SizeConfig.safeBlockVertical * 28,
              width: SizeConfig.safeBlockHorizontal * 40,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black26),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    items[index].text,
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        fontFamily: 'Raleway',
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w900),
                  ),
                  Image.asset(
                    items[index].imagePath,
                    height: SizeConfig.safeBlockVertical * 17,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
