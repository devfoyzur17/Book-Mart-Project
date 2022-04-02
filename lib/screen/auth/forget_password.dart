import 'package:flutter/material.dart';

import 'reset_password_otp.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  final formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 20,left: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(child: Text("Reset Password",style: TextStyle(fontSize: 30,color: Color(0xff0d964c)),)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Enter the number associated with your account\nand we will send a code verification\ncode to reset your password",
                style:TextStyle(fontSize: 15) ,
               ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text ("Enter Number",style: TextStyle(fontSize: 20,color: Color(0xff0d964c)),),
            ),

      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: BorderSide(
                            color: Color(0xff0d964c), width: 1.7)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: BorderSide(
                            color: Color(0xff0d964c), width: 1.7)),

                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: BorderSide(
                            color: Color(0xff0d964c), width: 1.7)),

                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: BorderSide(
                            color: Color(0xff0d964c), width: 1.7)),

                    contentPadding: EdgeInsets.zero,
                    prefixIcon:
                    Icon(Icons.call, color: Color(0xff0d964c)),
                    hintText: '+880***********',
                    labelStyle: TextStyle(color: Color(0xff0d964c)),
                    fillColor: Colors.grey,
                    focusColor: Colors.grey),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your phone number';
                  }
                  return null;
                },
              ),

              SizedBox(height: 35),
              SizedBox(
                  width: (MediaQuery.of(context).size.width) - 50,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff0d964c),
                          onPrimary: Colors.white,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                       onPressed: () {
                 if(formkey.currentState!.validate()) {
                Navigator.push(
                   context, MaterialPageRoute(builder: (context) => ResetOtp()));
                            }
                      },
                      child: Text(
                        "Verify",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ))),
            ]
          )
        ),
      )

          ],
        ),
      ),
    );
  }
}
