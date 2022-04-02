
 // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
 
import 'package:flutter/material.dart';

import '../auth/sign_in.dart';
import '../auth/sign_up.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  State<WellcomePage> createState() => _WellcomePageState();
}

 int appColor = 0xff0d964c;

class _WellcomePageState extends State<WellcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            alignment: Alignment.center,
            child: Image.asset("assets/auth_image/wellcome.png", width: 300),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Buy & Read",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff064625)),
              ),
              Text(
                "A diverse world of literary fascination awaits you",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff085e32)
                ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width)-50,
                  height: 50,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    primary: Color(appColor),
                    onPrimary: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)
                    )

                    
                  ),onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                    



                  }, child: Text("Sign up", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),))),

                    SizedBox(height: 20,),
                     SizedBox(
                  width: (MediaQuery.of(context).size.width)-50,
                  height: 50,
                  child: TextButton(style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(color: Color(appColor), width: 2)
                    ))
                  ), onPressed: () {
 Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));

                  }, child: Text("Sign in", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(appColor)),)))
              
              ],
            ))
      ]),
    );
  }
}
