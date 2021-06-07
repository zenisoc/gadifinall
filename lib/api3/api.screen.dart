import 'package:flutter/material.dart';
import 'package:gaadibazaar/api/api.controller.dart';
import 'package:gaadibazaar/api3/api.controller.dart';
import 'package:get/get.dart';
class ApiThree extends StatelessWidget {
  ApiThreeController _apiThreeController= Get.put(ApiThreeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
          children: [
           Expanded(
             child: FutureBuilder(
               future: _apiThreeController.postCar(),
               builder: (context,snapshot){
                 if(snapshot.hasData){
                  // print("fa");
                   return ListView.builder(
                     itemCount: snapshot.data.length,
                     itemBuilder: (context,index){
                       return Container(
                         width:200,
                         height: 300,
                         child: Column(
                           children: [

                           ],
                         ),
                       );
                     }
                   );
                 }
                 return  Container(
                   child: Center(child: Text("monk")),
                 );
               },
             )
           )
          ],
        )

    );
  }
}
