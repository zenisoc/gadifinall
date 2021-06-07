// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:http/http.dart' as http;
//
// class PreLoginController extends GetxController {
//   // String BaseUrlForNodeJs = "http://192.168.1.152:4000/";
//
//   final GoogleSignIn googleSignIn = GoogleSignIn(
//   );
//   Future googleLogin() async{
//     final GoogleSignInAccount user = await googleSignIn.signIn();
//     if(user == null ){
//       print("user is null");
//     }
// else{
//       try{
//         var url = "http://nandi.website/Nandi_host/nandi_taxi/social_login.php";
//         var response = await http.post(url,
//             body: {
//               "gmail_email":"joshizenis@gmail.com",
//               "gmail_name":"zenis",
//               "gmail_id":"10",
//             }
//         );
//         print(response.statusCode);
//         print(response.body);
//         if(response.statusCode==200){
//         //   var responseFromApi = LoginSuccessResponse.fromJson(jsonDecode(response.body));
//         //   localRepository.setTokens(responseFromApi.token.accessToken, responseFromApi.token.refreshToken);
//         //   Get.offAll(Home());
//         //   return;
//         // }
//       }}
//       catch(e){
//         Get.snackbar("error",e.toString());
//       }
//     }
//   }
// }