// To parse this JSON data, do
//
//     final filtercar = filtercarFromJson(jsonString);

import 'dart:convert';

List<Filtercar> filtercarFromJson(String str) => List<Filtercar>.from(json.decode(str).map((x) => Filtercar.fromJson(x)));

String filtercarToJson(List<Filtercar> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Filtercar {
  Filtercar({
    this.adId,
    this.status,
    this.image1,
    this.image2,
    this.image3,
    this.region,
    this.brandId,
    this.model,
    this.yearManufacture,
    this.color,
    this.transmission,
    this.milage,
    this.body,
    this.fuel,
    this.engineSize,
    this.seatNo,
    this.description,
    this.userId,
    this.price,
    this.ownStatus,
  });

  String adId;
  String status;
  String image1;
  String image2;
  String image3;
  String region;
  String brandId;
  String model;
  String yearManufacture;
  String color;
  String transmission;
  String milage;
  String body;
  String fuel;
  String engineSize;
  String seatNo;
  String description;
  String userId;
  String price;
  String ownStatus;

  factory Filtercar.fromJson(Map<String, dynamic> json) => Filtercar(
    adId: json["Ad_id"],
    status: json["Status"],
    image1: json["Image1"],
    image2: json["Image2"],
    image3: json["Image3"],
    region: json["Region"],
    brandId: json["Brand_id"],
    model: json["Model"],
    yearManufacture: json["Year_manufacture"],
    color: json["Color"],
    transmission: json["Transmission"],
    milage: json["Milage"],
    body: json["Body"],
    fuel: json["Fuel"],
    engineSize: json["Engine_size"],
    seatNo: json["Seat_no"],
    description: json["Description"],
    userId: json["user_id"],
    price: json["price"],
    ownStatus: json["Own_status"],
  );

  Map<String, dynamic> toJson() => {
    "Ad_id": adId,
    "Status": status,
    "Image1": image1,
    "Image2": image2,
    "Image3": image3,
    "Region": region,
    "Brand_id": brandId,
    "Model": model,
    "Year_manufacture": yearManufacture,
    "Color": color,
    "Transmission": transmission,
    "Milage": milage,
    "Body": body,
    "Fuel": fuel,
    "Engine_size": engineSize,
    "Seat_no": seatNo,
    "Description": description,
    "user_id": userId,
    "price": price,
    "Own_status": ownStatus,
  };
}
