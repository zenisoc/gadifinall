import 'package:flutter/material.dart';
import 'package:gaadibazaar/api/api.screen.dart';
import 'package:gaadibazaar/api/api.usedcar.dart';
import 'package:gaadibazaar/api2/api.screen.dart';
import 'package:gaadibazaar/api3/api.screen.dart';
import 'package:gaadibazaar/api3/api.usedcar.dart';
import 'package:gaadibazaar/authentication/change_password/change_password.dart';
import 'package:gaadibazaar/authentication/email_verification/email_verification.dart';
import 'package:gaadibazaar/authentication/forgot_password/forgot_password.dart';
import 'package:gaadibazaar/authentication/login/login.dart';
import 'package:gaadibazaar/authentication/pre_login/pre_login.dart';
import 'package:gaadibazaar/authentication/reset_password/reset_password.dart';
import 'package:gaadibazaar/authentication/sign_up/sign_up.dart';
import 'package:gaadibazaar/dashboard/bike_section/bike_filter.dart';
import 'package:gaadibazaar/dashboard/bike_section/bike_section.dart';
import 'package:gaadibazaar/dashboard/car_section/cars_filter.dart';
import 'package:gaadibazaar/dashboard/constructions_section/construction_filter.dart';
import 'package:gaadibazaar/dashboard/constructions_section/construction_section.dart';
import 'package:gaadibazaar/dashboard/main_dashboard/dashboard.dart';
import 'package:gaadibazaar/listing/listing_bike/listing_bike.dart';
import 'package:gaadibazaar/listing/listing_car/listing_car.dart';
import 'package:gaadibazaar/listing/listing_excavator/listing_excavator.dart';
import 'package:gaadibazaar/profile/profile_main.dart';
import 'dashboard/bike_section/bike_details.dart';
import 'dashboard/car_section/car_details.dart';
import 'dashboard/constructions_section/construction_details.dart';
import 'package:gaadibazaar/test/test.dart';



import 'dashboard/car_section/car_section.dart';
class PageViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PostApi(),

        Apitwo(),
         ApiThree(),
         PreLogin(),
        Login(),
        SignUp(),
        EmailVerification(),
        ForgotPassword(),
        ResetPassword(),
        EmailVerification(),
        ChangePassword(),
        Dashboard(),
        Test(),
        CarSection(),
        CarDetails(),
        CarsFilter(),
        BikeSection(),
        BikeFilter(),
        ConstructionSection(),//
        ConstructionFilter(),
        ListingCar(),
        ListingBike(),
        ListingExcavator(),
      ],
    );
  }
}
