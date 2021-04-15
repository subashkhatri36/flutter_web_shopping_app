import 'dart:convert';

import 'package:flutter/foundation.dart';

class AuthenticationModel {
  final String email;
  final String password;
  final bool isAdmin;
  final String profileName;
  final String phoneNo;
  final String photo;
  final String degniation;
  final String joined;
  bool isActive;
  AuthenticationModel({
    @required this.email,
    @required this.password,
    @required this.isAdmin,
    @required this.isActive,
    this.profileName,
    this.phoneNo,
    this.photo,
    this.degniation,
    this.joined,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'isAdmin': isAdmin,
      'profileName': profileName,
      'phoneNo': phoneNo,
      'photo': photo,
      'degniation': degniation,
      'joined': joined,
      'isActive': isActive,
    };
  }

  factory AuthenticationModel.fromMap(Map<String, dynamic> map) {
    return AuthenticationModel(
      email: map['email'],
      password: map['password'],
      isAdmin: map['isAdmin'],
      profileName: map['profileName'],
      phoneNo: map['phoneNo'],
      photo: map['photo'],
      degniation: map['degniation'],
      joined: map['joined'],
      isActive: map['isActive'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthenticationModel.fromJson(String source) =>
      AuthenticationModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthenticationModel &&
        other.email == email &&
        other.password == password &&
        other.isAdmin == isAdmin &&
        other.profileName == profileName &&
        other.phoneNo == phoneNo &&
        other.photo == photo &&
        other.degniation == degniation &&
        other.joined == joined &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        password.hashCode ^
        isAdmin.hashCode ^
        profileName.hashCode ^
        phoneNo.hashCode ^
        photo.hashCode ^
        degniation.hashCode ^
        joined.hashCode ^
        isActive.hashCode;
  }
}
