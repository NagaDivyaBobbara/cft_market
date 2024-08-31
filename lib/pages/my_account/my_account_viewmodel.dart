
import 'package:flutter/foundation.dart';
import 'package:cft_market/serviceLocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/my_account/my_account_api.dart';
import '../../domain/my_account/my_account_model/my_account_model.dart';


final myAccountViewModelProvider = ChangeNotifierProvider((ctx) => serviceLocator.get<MyAccountViewmodel>());
class MyAccountViewmodel extends ChangeNotifier {
  final MyAccountApi myAccountApi;
  MyAccountViewmodel({required this.myAccountApi});

  final List<MyAccountListData> myAccountOptions = [MyAccountListData(icon: Icons.person, title: "Profile Setting", myAccountOption: MyAccountOptions.profileSetting),
    MyAccountListData(icon: Icons.logout, title: "Logout", myAccountOption: MyAccountOptions.logout)];





}

