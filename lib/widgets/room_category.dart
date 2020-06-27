import 'package:flutter/material.dart';
import 'package:smart_home/utils.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = [
    'living Room',
    'Kitchen',
    'Garage',
    'Bedroom 1',
    'Master Bedroom',
    'Outside'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.safeBlockVertical * 8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 7.5),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: index == selectedIndex ? kPrimaryColor : Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: index == selectedIndex
                    ? null
                    : Border.all(color: Colors.black26),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: index == selectedIndex ? Colors.white : Colors.black,
                    fontSize: SizeConfig.safeBlockHorizontal * 4,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway',
                    letterSpacing: 1.1,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
