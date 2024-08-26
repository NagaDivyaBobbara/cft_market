import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/background.png",
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: double.infinity,
                  ),
                ],
              ),
              SizedBox(
                height: 56,
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.of(context).pop();
                    }, icon: const Icon(Icons.arrow_back_rounded),iconSize: 24,)
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
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
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Welcome To Carolina Farm Trust", style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w700, fontSize: 19),),
                      Text("Forgot Password", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 17)),
                      const TextField(
                        decoration: InputDecoration(
                            labelText: "Enter email address",
                            border: OutlineInputBorder()
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()  {
          
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text("Send", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}


