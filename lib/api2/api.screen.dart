import 'package:flutter/material.dart';
import 'package:gaadibazaar/api/api.controller.dart';
import 'package:gaadibazaar/api2/api.controller.dart';
import 'package:get/get.dart';
class Apitwo extends StatelessWidget {
  ApitwoController _apitwoController = Get.put(ApitwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
          children: [
           Expanded(
             child: FutureBuilder(
               future: _apitwoController.filterCar(),
               builder: (context,snapshot){
                 if(snapshot.hasData){
                   print("two");
                   return ListView.builder(
                     itemCount: snapshot.data.length,
                     itemBuilder: (context,index){
                       return Container(
                         width:200,

                         child: Column(
                           children: [
                             Image.network(snapshot.data[index].image1.toString()),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Row(
                                 children: [
                                   // Text(snapshot.data[index].price.toString()),
                                   // SizedBox(width: 40,),
                                   Text(snapshot.data[index].status.toString()),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Row(
                                 children: [
                                   Text(snapshot.data[index].body.toString()),
                                   SizedBox(width: 40,),
                                   Text(snapshot.data[index].fuel.toString()),
                                   SizedBox(width: 40,),
                                   Text(snapshot.data[index].milage.toString()),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       );
                     }
                   );
                 }
                 return  Container(
                   child: Center(child: Text("used car")),
                 );
               },
             )
           )
          ],
        )

    );
  }
}
