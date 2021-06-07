import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class EmailVerficationController extends GetxController{


  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();
  final controller6 = TextEditingController();



Future UserVerification ( String email) async{
  String  value = controller1.text+controller2.text+controller3.text+controller4.text+controller5.text+controller6.text;
    var response = http.post("http://nandi.website/Nandi_host/nandi_taxi/User_verification.php",
      body: {
      "tag" : "verify_code",
        "otp" : value,
        "email": email ,
      }

    );
}
  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }

}