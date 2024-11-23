import 'package:authentication_task/view/login_screen/login_screen.dart';
import 'package:authentication_task/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen() ,
    );
  }
}