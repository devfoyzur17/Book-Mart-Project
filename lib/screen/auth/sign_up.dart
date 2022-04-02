import 'package:flutter/material.dart';

import 'sign_in.dart';
import 'sign_up_otp.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formkey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 40, color: Color(0xff0d964c)),
                  ),
                ),
              ),
              Image.asset(
                "assets/auth_image/signUp.png",
                height: 250,
                width: 250,
              ),



              //Text Form Field *********************
              Form(
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
                              borderSide: BorderSide(color: Color(0xff0d964c), width: 1.7)),

                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0),
                              borderSide: BorderSide(
                                  color: Color(0xff0d964c), width: 1.7)),


                            contentPadding: EdgeInsets.zero,
                            prefixIcon:
                                Icon(Icons.person, color: Color(0xff0d964c)),
                            hintText: 'Enter your full name',
                            labelText: 'Name',

                            labelStyle: TextStyle(color: Color(0xff0d964c)),
                            ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Name';
                          }
                          return null;
                        },
                      ),


                      SizedBox(height: 15),


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
                                borderSide: BorderSide(color: Color(0xff0d964c), width: 1.7)),

                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                borderSide: BorderSide(
                                    color: Color(0xff0d964c), width: 1.7)),


                            contentPadding: EdgeInsets.zero,
                            prefixIcon:
                                Icon(Icons.call, color: Color(0xff0d964c)),
                            hintText: 'Enter your phone number',
                            labelText: 'Number',

                            labelStyle: TextStyle(color: Color(0xff0d964c)),
                            fillColor: Colors.grey,
                            focusColor: Colors.grey),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your phone number';
                          }
                          return null;
                        },
                      ),


                      SizedBox(height: 15),


                      TextFormField(
                        obscureText: _isObscure,
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
                                borderSide: BorderSide(color: Color(0xff0d964c), width: 1.7)),

                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                borderSide: BorderSide(
                                    color: Color(0xff0d964c), width: 1.7)),

                            contentPadding: EdgeInsets.zero,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            prefixIcon:
                                Icon(Icons.lock, color: Color(0xff0d964c)),
                            hintText: 'Enter your password',
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Color(0xff0d964c)),
                            fillColor: Colors.grey,
                            focusColor: Colors.grey),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Password';
                          }
                          return null;
                        },
                      ),



                      //Sign Up **********  Button  *********
                      SizedBox(height: 45),
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
                                if(formkey.currentState!.validate()){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup_otp()));
                                }

                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ))),
                    ],
                  )),


              SizedBox(height: 10,),


              //**************   RichText ************
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Have an account ? ",style: TextStyle(fontSize: 15,color: Color(0xff0d964c)),),
                 InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                     },
                     child: Text("Sign In",style: TextStyle(fontSize: 15,color: Colors.red),)),

               ],
             ),



              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
