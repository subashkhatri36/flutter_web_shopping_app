import 'dart:convert';

import 'package:flutter/cupertino.dart';

class MenuModel {
  final String mentTitle;
  final IconData iconData;
  MenuModel({
    @required this.mentTitle,
    @required this.iconData,
  });

  Map<String, dynamic> toMap() {
    return {
      'mentTitle': mentTitle,
      'iconData': iconData.codePoint,
    };
  }

  factory MenuModel.fromMap(Map<String, dynamic> map) {
    return MenuModel(
      mentTitle: map['mentTitle'],
      iconData: IconData(map['iconData'], fontFamily: 'MaterialIcons'),
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuModel.fromJson(String source) =>
      MenuModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MenuModel &&
        other.mentTitle == mentTitle &&
        other.iconData == iconData;
  }

  @override
  int get hashCode => mentTitle.hashCode ^ iconData.hashCode;

  @override
  String toString() => 'MenuModel(mentTitle: $mentTitle, iconData: $iconData)';
}
