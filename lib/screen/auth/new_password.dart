import 'package:flutter/material.dart';

import 'sign_in.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final formkey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool isObscure=true;

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
                  child: Center(child: Text("New Password",
                    style: TextStyle(fontSize: 30,color: Color(0xff0d964c)),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text("Create new password,your password\n must be deferent from previus\n used password",
                    style:TextStyle(fontSize: 18) ,
                  ),
                ),

               Padding(
                 padding: const EdgeInsets.only(top: 15),
                 child: Form(
              key: formkey,
                 child: Column(
                  children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(
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
                              borderSide: BorderSide(
                                  color: Color(0xff0d964c), width: 1.7)),

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
                  ),


                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: TextFormField(
                        obscureText: isObscure,
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
                            suffixIcon: IconButton(
                              icon: Icon(
                                isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              },
                            ),
                            prefixIcon:
                            Icon(Icons.lock, color: Color(0xff0d964c)),

                            hintText: 'Enter your Confirm password',
                            labelText: ' Confirm Password',
                            labelStyle: TextStyle(color: Color(0xff0d964c)),
                            fillColor: Colors.grey,
                            focusColor: Colors.grey),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Confirm Password';
                          }
                          return null;
                        },
                      ),
                    ),


              ],
            ),
          ),
               ),






                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("Both password must match",style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.right,),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: SizedBox(
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
    }
                          },
                          child: Text(
                            "Reset  Password",
                            style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ))),
                ),


              ])
          ),
        )
    );
  }
}
