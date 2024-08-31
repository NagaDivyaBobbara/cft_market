

import 'package:cft_market/pages/home/home_screen.dart';
import 'package:cft_market/serviceLocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenProvider = ChangeNotifierProvider((ctx) => serviceLocator.get<HomeScreenViewmodel>());
class HomeScreenViewmodel extends ChangeNotifier {
  MenuOptions selectedMenuOption = MenuOptions.saleOrder;

  void onTapMenu(MenuOptions option){
    selectedMenuOption = option;
    notifyListeners();
  }
}