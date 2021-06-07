// To parse this JSON data, do
//
//     final profileData = profileDataFromJson(jsonString);

import 'dart:convert';

List<ProfileData> profileDataFromJson(String str) => List<ProfileData>.from(json.decode(str).map((x) => ProfileData.fromJson(x)));

String profileDataToJson(List<ProfileData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProfileData {
  ProfileData({
    this.id,
    this.community,
    this.dateOfBirth,
    this.currentAddress,
    this.maritalStatus,
    this.citizenship,
    this.country,
    this.district,
    this.education,
    this.userId,
    this.planId,
    this.siblings,
    this.religion,
    this.height,
    this.bio,
    this.profession,
    this.caste,
    this.path1,
    this.path2,
    this.path3,
    this.interestedIn,
    this.gender,
    this.email,
    this.username,
    this.password,
    this.isVerified,
    this.online,
    this.otp,
    this.socketId,
    this.createdAt,
    this.planExpire,
    this.uniqueId,
    this.rpToken,
  });

  String id;
  String community;
  String dateOfBirth;
  String currentAddress;
  String maritalStatus;
  String citizenship;
  String country;
  String district;
  String education;
  String userId;
  String planId;
  String siblings;
  String religion;
  String height;
  String bio;
  String profession;
  dynamic caste;
  String path1;
  String path2;
  String path3;
  String interestedIn;
  String gender;
  String email;
  String username;
  String password;
  String isVerified;
  String online;
  String otp;
  dynamic socketId;
  DateTime createdAt;
  dynamic planExpire;
  String uniqueId;
  String rpToken;

  factory ProfileData.fromJson(Map<String, dynamic> json) => ProfileData(
    id: json["id"],
    community: json["community"],
    dateOfBirth: json["date_of_birth"],
    currentAddress: json["current_address"],
    maritalStatus: json["marital_status"],
    citizenship: json["citizenship"],
    country: json["country"],
    district: json["district"],
    education: json["education"],
    userId: json["user_id"],
    planId: json["plan_id"],
    siblings: json["siblings"],
    religion: json["religion"],
    height: json["height"],
    bio: json["bio"],
    profession: json["profession"],
    caste: json["caste"],
    path1: json["path1"],
    path2: json["path2"],
    path3: json["path3"],
    interestedIn: json["interested_in"],
    gender: json["gender"],
    email: json["email"],
    username: json["username"],
    password: json["password"],
    isVerified: json["is_verified"],
    online: json["online"],
    otp: json["otp"],
    socketId: json["socket_id"],
    createdAt: DateTime.parse(json["created_at"]),
    planExpire: json["plan_expire"],
    uniqueId: json["unique_id"],
    rpToken: json["rp_token"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "community": community,
    "date_of_birth": dateOfBirth,
    "current_address": currentAddress,
    "marital_status": maritalStatus,
    "citizenship": citizenship,
    "country": country,
    "district": district,
    "education": education,
    "user_id": userId,
    "plan_id": planId,
    "siblings": siblings,
    "religion": religion,
    "height": height,
    "bio": bio,
    "profession": profession,
    "caste": caste,
    "path1": path1,
    "path2": path2,
    "path3": path3,
    "interested_in": interestedIn,
    "gender": gender,
    "email": email,
    "username": username,
    "password": password,
    "is_verified": isVerified,
    "online": online,
    "otp": otp,
    "socket_id": socketId,
    "created_at": createdAt.toIso8601String(),
    "plan_expire": planExpire,
    "unique_id": uniqueId,
    "rp_token": rpToken,
  };
}
