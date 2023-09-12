import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'main.dart';

Color hexToColor(String hexColor) {
  return Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
}

class homePage extends StatelessWidget{

  static const String idScreen = "homeScreen";

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: hexToColor("#121212"),
      body: Container(
        child: Center(
          child: Column(
            children: [SizedBox(
              height: 200,
              width: 200,
              child: IconButton(onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Funcationality to be added"),
                      duration:Duration(seconds: 2),));
              },
                  icon: Image.asset("assets/user.png")),
            ),
              const SizedBox(height: 20,),
              //signupInfo(),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () {

              }, child: const Text("Create Account"),
                style: ElevatedButton.styleFrom(backgroundColor: hexToColor("#1E847F"),
                    fixedSize: const Size(130, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )),)
            ],
          ),
        ),
      ),
    );
  }

}