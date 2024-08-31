import 'package:flutter/cupertino.dart';

enum MyAccountOptions {
  profileSetting, logout
}


class MyAccountListData {
  final IconData icon;
  final String title;
  final MyAccountOptions myAccountOption;
  MyAccountListData({required this.icon, required this.title, required this.myAccountOption});
}