import 'package:cft_market/pages/home/home_screen_viewmodel.dart';
import 'package:cft_market/pages/sale_order_list/sale_order_list_screen.dart';
import 'package:cft_market/pages/my_account/my_account_screen.dart';
import 'package:cft_market/serviceLocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum MenuOptions {
  saleOrder, myAccount
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> drawerItems = ["Sale Order", "My Account"];
  final homeScreenViewModel = serviceLocator.get<HomeScreenViewmodel>();

  Widget getDrawerItemWidget(MenuOptions option) {
    switch(option) {
      case MenuOptions.saleOrder:
        return const SaleOrderListScreen();
      case MenuOptions.myAccount:
        return MyAccountScreen();
      default:
        return const Text("Error");
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        }, icon: const Icon(Icons.menu, color: Colors.white,),
        ),
        backgroundColor: Colors.teal.shade400,
        title: Consumer(
        builder: (context, ref, child) {
          final navBarTitle = ref.watch(homeScreenProvider).selectedMenuOption;
          return Text(navBarTitle == MenuOptions.saleOrder ? "Sale Order" : "My Account", style: const TextStyle(color: Colors.white),);
        }
      ),),
      drawer: Consumer(
        builder: (context, ref, child) {
          final selectedMenuOption = ref.watch(homeScreenProvider).selectedMenuOption;
          return Drawer(
            width: 300,
            backgroundColor: Colors.teal.shade400,
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/images/cft_market_transparent.png",
                          height: 55,)),
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: const Icon(Icons.cancel_outlined, color: Colors.white70,))
                  ],
                ),
                ListTile(
                  selectedTileColor: Colors.white.withOpacity(0.1),
                  title: const Text("Sale Order", style: TextStyle(color: Colors.white)), selected: selectedMenuOption == MenuOptions.saleOrder, onTap: (){
                  homeScreenViewModel.onTapMenu(MenuOptions.saleOrder);
                  // Navigator.push(context, MaterialPageRoute(builder: (ctx) => SaleOrderListScreen()));
                  Navigator.of(context).pop();
                },),
                ListTile(
                  selectedTileColor: Colors.white.withOpacity(0.1),
                  title: const Text("My Account",  style: TextStyle(color: Colors.white)), selected: selectedMenuOption == MenuOptions.myAccount, onTap: (){
                  homeScreenViewModel.onTapMenu(MenuOptions.myAccount);
                  // Navigator.push(context, MaterialPageRoute(builder: (ctx) => SaleOrderListScreen()));
                  Navigator.of(context).pop();
                },),

              ],
            ),
          );
        }
      ),
      body:   Consumer (
        builder: (context, ref, child) {
          final homeViewModel = ref.watch(homeScreenProvider);
          final selectedMenuIndex = homeViewModel.selectedMenuOption;
          return getDrawerItemWidget(selectedMenuIndex);
        }
      ),
      // ElevatedButton
      //   onPressed: () {
      //     // Open the drawer manually
      //     _scaffoldKey.currentState?.openDrawer();
      //   },
      //   child: Text('Open Menu'),
      // ),
    );
  }
}
