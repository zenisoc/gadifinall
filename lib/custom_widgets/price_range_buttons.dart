import 'package:flutter/material.dart';
import 'package:gaadibazaar/dashboard/car_section/cars_filter.dart';

class PriceRangeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Below 10 lakh',
          style: ContainerBodyText(),
        ),
      ),
    );
  }
}

class FuelTypes extends StatelessWidget {
  String fuel_image;
  String fuel_type;

  FuelTypes({this.fuel_image, this.fuel_type});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(fuel_image),
        SizedBox(height: 5,),
        Text(fuel_type),
      ],
    );
  }
}
