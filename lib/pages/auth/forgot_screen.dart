import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mailer/smtp_server.dart';
import 'package:mailer/mailer.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  Future<void> sendEmail() async {
        final smtpServer = gmail(dotenv.env['OUTLOOK_EMAIL']!, dotenv.env['OUTLOOK_PASSWORD']!);
                // 'nfte uyhq gnjb duze');
    final message = Message()
    ..from =  Address(dotenv.env['OUTLOOK_EMAIL']!, 'Carolina Farm Trust')
      // ..ccRecipients.add('renukalavanyadevib@gmail.com')
      ..recipients.add('s160722@rguktsklm.ac.in')
          ..subject = "Reset Password"
          ..text = "Click on the provided link to reset password";

        try {
          final sendReport = await send(message, smtpServer);
          print('Message sent: ' + sendReport.toString());
        } on MailerException catch (e) {
          print('Message not sent. \n' + e.toString());
          for (var p in e.problems) {
            print('Problem: ${p.code}: ${p.msg}');
          }
        }

  }

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
                  Row(
                    mainAxisAlignment: Device.get().isTablet ? MainAxisAlignment.center : MainAxisAlignment.start,
                    children: [
                      Device.get().isTablet ?
                      Image.asset(
                        "assets/images/background.png",
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: 500,
                      ) : Expanded(
                        child: Image.asset(
                          "assets/images/background.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height * 0.45,
                          width: Device.width,
                        ),
                      ),
                    ],
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
                  width: Device.get().isTablet ? 500 : double.infinity,
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
                          sendEmail();



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


