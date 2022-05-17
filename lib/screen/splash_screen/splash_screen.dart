
 // ignore_for_file: prefer_const_constructors
 
import 'package:flutter/material.dart';
import 'dart:async';

import 'welcome_page.dart';  


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 2),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => WellcomePage()  
            )  
         )  
    );  
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Image.asset("assets/icon/app_icon.png", height: 100,width: 100,),
             Center(child: Text("Book Mart", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green,fontSize: 30),))
           ],
         ),
    );
  }
}
