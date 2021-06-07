import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:image_picker/image_picker.dart';

class ListingBike extends StatefulWidget {
  @override
  _ListingBikeState createState() => _ListingBikeState();
}

class _ListingBikeState extends State<ListingBike> {


  File _image;
  final picker = ImagePicker();


  var tick1= false;
  var tick2= false;
  var tick3= false;
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeTextColor,
          title: Row(
            children: [
              Icon(Icons.clear),
              SizedBox(
                width: 20,
              ),
              Text(
                "Post New AD",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormList(
                  controller: "dd",
                  title: "Conditions",
                  itemList: ["New", "Old"],
                ),
                SizedBox(
                  height: 7,
                ),
                TextFormList(
                  title: "What are you selling?",
                  itemList: ["Bike", "Scooteer", "mopped"],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add Photo - please add orginal photo",
                  style: HeadingThreeRegular(),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          getImage();
                        },
                        child: Center(
                          child: _image == null
                              ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DottedBorder(
                              padding: EdgeInsets.all(0),
                              dashPattern: [9, 5],
                              radius: Radius.circular(40),
                              child: Container(
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(10),
                                  // color: Colors.green,
                                ),
                                height: 84,
                                child: Center(
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          )
                              : Image.file(_image),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          getImage();
                        },
                        child: Center(
                          child: _image == null
                              ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DottedBorder(
                              padding: EdgeInsets.all(0),
                              dashPattern: [9, 5],
                              radius: Radius.circular(40),
                              child: Container(
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(10),
                                  // color: Colors.green,
                                ),
                                height: 84,
                                child: Center(
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          )
                              : Image.file(_image),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          getImage();
                        },
                        child: Center(
                          child: _image == null
                              ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DottedBorder(
                              padding: EdgeInsets.all(0),
                              dashPattern: [9, 5],
                              radius: Radius.circular(40),
                              child: Container(
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(10),
                                  // color: Colors.green,
                                ),
                                height: 84,
                                child: Center(
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          )
                              : Image.file(_image),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                TextFormList(
                  title: "Select region",
                  itemList: ["kathmandu", "patan", "bhaktapur"],
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Select Make :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Select Model :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Year of manufacture :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Lot no :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Milage in km :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Select Body :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Select Fuel :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Type engine size :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Break type :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Further Description :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Price :",
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: themeTextColor,
                              value: tick1, onChanged: (ticks1){
                            setState(() {
                              tick1= ticks1;
                              tick2 = false;
                              tick3 = false;

                            });
                          }),
                          Text("Private",)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: themeTextColor,
                              value: tick2, onChanged: (ticks2){
                            setState(() {
                              tick2= ticks2;
                              tick1= false;
                              tick3= false;
                            });
                          }),
                          Text("Dealers",)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: themeTextColor,
                              value: tick3, onChanged: (ticks3){
                            setState(() {
                              tick3= ticks3;
                              tick1= false;
                              tick2 = false;
                            });
                          }),
                          Text("Traders",)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Name :",
                ),
                SizedBox(
                  height: 7,
                ),
                InputValue(
                  title: "Phone number :",
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: themeTextColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("POST AD",style: TextStyle(color: Colors.white),)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("By Clicking on Post Ad, you accept the Terms of Use, confirm that you will abide by the safety tips, & declare that this post does not include any prohibited items", style: HeadingThreeRegular()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFormList extends StatelessWidget {
  List itemList = [];
  String title;

  TextFormList({this.itemList, this.title});

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

class InputValue extends StatelessWidget {
  String title;

  InputValue({this.title});

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

          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
