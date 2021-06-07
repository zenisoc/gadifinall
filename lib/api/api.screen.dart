import 'package:flutter/material.dart';
import 'package:gaadibazaar/api/api.controller.dart';
import 'package:get/get.dart';
class Api extends StatelessWidget {
  ApiController _apiController = Get.put(ApiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
          children: [
           Expanded(
             child: FutureBuilder(
               future: _apiController.Car(),
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
                             Image.network(snapshot.data[index].image1.toString()),
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
