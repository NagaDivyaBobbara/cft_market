import 'package:cft_market/domain/my_account/my_account_model/my_account_model.dart';
import 'package:cft_market/pages/Auth/login_screen.dart';
import 'package:cft_market/pages/my_account/my_account_viewmodel.dart';
import 'package:cft_market/pages/my_account/profile_settings/profile_settings_screen.dart';
import 'package:cft_market/serviceLocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  MyAccountScreen({super.key});

  final myAccountVMProvider = serviceLocator.get<MyAccountViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 8),
              child:  Text(
                "Account Settings",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              )),
          Expanded(
              child: ListView(
                  children: myAccountVMProvider.myAccountOptions.map((item) {
            return ListTile(
              trailing:  Icon(Icons.keyboard_arrow_right),
              leading: Icon(item.icon),
              onTap: () {
                switch (item.myAccountOption) {
                  case MyAccountOptions.profileSetting:
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) =>  ProfileSettingsScreen()));
                    // break;
                  case MyAccountOptions.logout:
                    showDialog(
                      barrierDismissible: false,
                        context: context,
                        builder: (ctx) {
                      return Center(
                        child: Container(
                          height: 230,
                          child: AlertDialog(
                            insetPadding: EdgeInsets.zero,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16),
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/images/question_mark_rounded.png", height: 40, width: 40, color: Colors.teal,),
                                Text("Confirmation", style: TextStyle(fontSize: 18),),
                                Text("Are you sure you want to proceed?",style: TextStyle(fontSize: 14),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blueGrey,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                          foregroundColor: Colors.white
                                      ),
                                      onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child: Text("No")),
                                  SizedBox(width: 16,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.teal,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      foregroundColor: Colors.white
                                    ),
                                      onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => LoginScreen()));
                                  }, child: Text("Yes"))
                                ],)
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                    // break;
                }
              },
              title: Text(item.title),
            );
          }).toList()))
        ],
      ),
    );
  }
}

