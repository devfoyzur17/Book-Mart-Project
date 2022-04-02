import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'sign_in.dart';

class Signup_otp extends StatefulWidget {
  const Signup_otp({Key? key}) : super(key: key);

  @override
  _Signup_otpState createState() => _Signup_otpState();
}

class _Signup_otpState extends State<Signup_otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Container(
          child: ListView(
            children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(child: Text ("Verify account",
                    style: TextStyle(color: Color(0xff0d964c),fontSize: 35),)),

                ),

                Image.asset("assets/auth_image/Signupotp.png",height: 250,width: 250,),
                 Text("Enter verification code we have send SMS to: +088**********",style: TextStyle(fontSize: 18),),

                 Padding(
                   padding: const EdgeInsets.only(top: 60),
                   child: Row(
                     children: [
                       OTPTextField(
                         length: 4,
                         width: MediaQuery.of(context).size.width-40,
                         fieldWidth: 40,
                         style: TextStyle(
                             fontSize: 17,color: Color(0xff0d964c)
                         ),
                         textFieldAlignment: MainAxisAlignment.spaceAround,
                         fieldStyle: FieldStyle.underline,
                         onCompleted: (pin) {
                           print("Completed: " + pin);
                         },
                       ),
                     ],
                   ),
                 ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Resend code?",style: TextStyle(fontSize: 16,color: Colors.red),
                textAlign: TextAlign.right,),
              ), SizedBox(height: 45),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                      },
                      child: Text(
                        "Sign In",
                        style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ))),


            ],
          ),
        ),
      ),
    );
  }
}
