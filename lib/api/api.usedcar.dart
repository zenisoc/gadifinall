// import 'package:flutter/material.dart';
// import 'package:gaadibazaar/api/api.controller.dart';
// import 'package:get/get.dart';
//
// class UsedCar extends StatelessWidget {
//   ApiController _apiController = Get.put(ApiController());
//   @override
//   Widget build(BuildContext context) {
//     return  FutureBuilder(
//       future: _apiController.Car(),
//       builder: (context,snapshot){
//         if(snapshot.hasData){
//           print("newcar");
//           return ListView.builder(
//               physics: ClampingScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: snapshot.data.length,
//               itemBuilder: (context,index){
//                 return Container(
//                   width:200,
//                   height: 300,
//                   child: Column(
//                     children: [
//                       Image.network(snapshot.data[index].image1.toString()),
//                       Text(snapshot.data[index].status.toString()),
//                     ],
//                   ),
//                 );
//               }
//           );
//         }
//         return  Container(
//           child: Center(child: CircularProgressIndicator()),
//         );
//       },
//     );
//   }
// }
