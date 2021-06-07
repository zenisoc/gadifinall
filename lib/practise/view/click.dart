import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/practise/controller/click_controller.dart';
import 'package:get/get.dart';

class Click extends StatelessWidget {
  ClickController _clickController = Get.put(ClickController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      _clickController.add();
                    },
                    child: Center(
                        child: Text(_clickController.a.value.toString()))),
                InkWell(
                    onTap: () {
                      _clickController.sub();
                    },
                    child: Center(
                        child: Text(_clickController.a.value.toString()))),
                Expanded(
                  child: FutureBuilder(
                    future: _clickController.displayData(),
                    builder: (context, snapshot) {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 200,
                            height: 200,
                            child: Column(
                              children: [
                                Text(snapshot.data[index].caste.toString()),
                                Text(snapshot.data[index].bio.toString()),
                                Text(snapshot.data[index].community.toString()),
                                Text(snapshot.data[index].district.toString()),
                                Text(snapshot.data[index].education.toString()),
                                Text(snapshot.data[index].siblings.toString()),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Expanded(
                  child: FutureBuilder(
                    future: _clickController.postData(),
                    builder: (context, snapshot) {
                      return Text("aass");
                    },
                  ),
                ),
                InkWell(
                  onTap: (){
                   _clickController.Register();
                  },
                    child: Text("REGISTER",style: HeadingOneBold(),),)
              ],
            );
          },
        ),
      ),
    );
  }
}
