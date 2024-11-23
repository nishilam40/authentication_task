import 'dart:ui';

import 'package:authentication_task/view/home_screen/home_screen.dart';
import 'package:authentication_task/view/registration_page/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen ({super.key});

  @override
  State<LoginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<LoginScreen> {
   
  @override
  Widget build(BuildContext context) {
    
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
  
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,
        weight: 10,
        size: 30,color: Colors.black,),
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 30),
                child: Text(
                  "Sign in to your Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(width: 2),
                        ),
                        hintText: "Your email addresss",
                        label: Text("email"),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                     
                    ),
                    ElevatedButton(onPressed: () async {
                String email=emailcontroller .text;
                 String password=passwordcontroller .text;
 validator: (value) {
                      if(value == null ){
                          return 'enter email adress';

                        }
                        if(!emailcontroller.text.contains("@")){
                          return 'enter valid email adress';
                        }
                        return null; 

                      };
                 


final SharedPreferences prefs = await SharedPreferences.getInstance();


await prefs.setString('email', emailcontroller.text);
await prefs.setString('password', passwordcontroller.text);


          }, 
          child: Text("")),

                    
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2),
                    ),
                    hintText: "password",
                    label: Text("password"),
                    enabledBorder: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  
                  //  validator: (value) {
                  //       if(value == null || value.isEmpty){
                  //         return ' please enter password  ';

                  //       }
                  //       if(value.length<6){
                  //         return 'password must have 6 numbers ';
                  //       }
                  //     else if(passwordcontroller!=passwordcontroller);{
                  //       return "wrong password";
                  //     }

                  //     },
                 
                ),
                
              ),
               ElevatedButton(onPressed: () async {
                String email=emailcontroller .text;
                 String password=passwordcontroller .text;
 validator: (value) {
                        if(value == null || value.isEmpty){
                          return ' please enter password  ';

                        }
                        if(value.length<6){
                          return 'password must have 6 numbers ';
                        }
                      else if(passwordcontroller!=passwordcontroller);{
                        return "wrong password";
                      }

                      };
                 


final SharedPreferences prefs = await SharedPreferences.getInstance();


await prefs.setString('email', emailcontroller.text);
await prefs.setString('password', passwordcontroller.text);


          }, 
          child: Text("")),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(Icons.check_box_outlined,
                        size: 35, color: Colors.black38),
                  ),
                  Text(
                    "Remember Me",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: 40,
                  ),
                  Spacer(),
                  SizedBox(width: 5),
                  Text(
                    "Forgot password",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                  )
                ],
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 320,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      elevation: MaterialStateProperty.all(20),
                    ),
                    onPressed: (){},
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>HomePage (),
                            ));

                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>RegistrationPage (),
                            ));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}


 