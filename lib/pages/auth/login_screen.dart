import 'package:cft_market/pages/Auth/forgot_screen.dart';
import 'package:cft_market/pages/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: Device.get().isTablet ? MainAxisAlignment.center : MainAxisAlignment.start,
                    children: [
                      Device.get().isTablet ?
                      Image.asset(
                        "assets/images/background.png",
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: 500 ,
                      ) :  Expanded(
                        child: Image.asset(
                          "assets/images/background.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height * 0.45,
                          width: Device.width,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Center(
                child: Container(
                  height: 470,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300,
                          offset: const Offset(0, 0),
                          blurStyle: BlurStyle.outer,
                          blurRadius: 10,),
                      ]
                  ),
                  width: Device.get().isTablet ? 500 : double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 60,
                              width: double.infinity,
                              child: Image.asset("assets/images/cft_market.png"),
                            ),
                            Container(
                                margin: const EdgeInsets.symmetric(vertical: 16.0),
                                child: const Text("Login Your Account",
                                  style: TextStyle(fontSize: 18),
                                )),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: "Username",
                                // filled: true,
                                // fillColor: Colors.white60,
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("Username is required", style: TextStyle(color: Colors.red),),
                            const SizedBox(height: 16,),
                            const TextField(
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("Password is required", style: TextStyle(color: Colors.red),),
                            const SizedBox(height: 8,),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => ForgotScreen()));
                                  },
                                  child: Text("Forgot Password?"),
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: ()  {
                                Navigator.push(context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Text("Login", style: TextStyle(color: Colors.white),),
                            ),
                        
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

// Scaffold(
// backgroundColor: Colors.grey[100],
// body: Center(
// child: Container(
// margin: const EdgeInsets.symmetric(horizontal: 16,),
// decoration:  BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(10),
// ),
// height: 450,
// width: double.infinity,
// child: Stack(
// children: [
// Image.asset(
// "assets/images/background.png",
// fit: BoxFit.fill,
// height: double.infinity,
// width: double.infinity,
// ),
// Container(
// padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
// decoration: BoxDecoration(
// color: Colors.white.withOpacity(0.7),
// borderRadius: BorderRadius.circular(10),
// boxShadow: [
// BoxShadow(color: Colors.grey.shade300,
// offset: const Offset(0, 0),
// blurStyle: BlurStyle.outer,
// blurRadius: 10,),
// ]
// ),
// width: double.infinity,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// alignment: Alignment.centerLeft,
// height: 60,
// width: double.infinity,
// child: Image.asset("assets/images/cft_market.png"),
// ),
// Text("Login Your Account"),
// const TextField(
// decoration: InputDecoration(
// labelText: "Username",
// // filled: true,
// // fillColor: Colors.white60,
// border: OutlineInputBorder(),
// ),
// ),
// Text("Username is required"),
// TextField(
// decoration: InputDecoration(
// labelText: "Password",
// border: OutlineInputBorder()
// ),
// ),
// Text("Password is required"),
// Row(
// children: [
// TextButton(onPressed: (){}, child: Text("Forgot Password?")),
// ],
// ),
// ElevatedButton(onPressed: (){}, child: Text("Login")),
// ],
// ),
// ),
// ],
// ),
// ),
// ));


//20b2aa

