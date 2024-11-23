import 'package:authentication_task/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Login successfully",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          }, child: Text("log out"))
        ]
          ),
        
      );
    
  }
}