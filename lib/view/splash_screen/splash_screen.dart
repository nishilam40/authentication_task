import 'dart:async';

import 'package:authentication_task/view/login_screen/login_screen.dart';
import 'package:authentication_task/view/registration_page/registration_page.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   Timer(Duration(seconds: 3), () { 
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    
   });
    super.initState();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Screen",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),),
      ),
    );
  }
}