import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/price_range_buttons.dart';
import 'package:gaadibazaar/dashboard/bike_section/conditions.dart';



class ConstructionFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF027C25),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Center(
                      child: Text(
                        'RESET',
                        style: SearchScreenAppBarResetText(),
                      ),
                    )),
                onPressed: () {},
              ),
            )
          ],
          title: Row(
            children: [
              Text('Search for Bikes / Scooters', style: SearchScreenAppBarTheme()),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                OldNew(title: 'Conditions',itemList: ['Old','New'],),

                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  'Search by Brand / model name / features',
                  style: ContainerHeadingText(),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      'Excavator / Loader / CAT / JCB',
                      style: ContainerBodyText(),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  'Price',
                  style: ContainerHeadingText(),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  color: Colors.transparent,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: PriceRangeButton()),
                      Expanded(child: PriceRangeButton()),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'above 1 crore',
                              style: ContainerBodyText(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFF027C25),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Apply Filters',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Helvetica',
                          color: Colors.white),
                    ),
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

ContainerHeadingText() {
  return TextStyle(fontSize: 14, fontFamily: 'Helvetica', color: Colors.green);
}

ContainerBodyText() {
  return TextStyle(fontSize: 14, fontFamily: 'Helvetica', color: Colors.grey);
}
class OldNew extends StatelessWidget {
  List itemList = [];
  String title;

  OldNew({this.itemList, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: themeTextColor, //                   <--- border color
            width: 1.0,
          )),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  title,
                  style: TextStyle(color: themeTextColor),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                ),
                items: itemList
                    .map((e) => DropdownMenuItem(
                  child: Text(
                    e,
                    style: TextStyle(color: Colors.orange),
                  ),
                  value: e,
                ))
                    .toList(),
                onChanged: (hgj) {}),
          )
        ],
      ),
    );
  }
}