

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:book_mart_project/data/profile_data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        automaticallyImplyLeading: false,
        title: Center(child: Text("My Profile", style: TextStyle(color: Colors.black),))),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("assets/user.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flutter Tigers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    Text("fluttertigers@gmail.com", style: TextStyle(color: Colors.grey),)
                  ],
                ),
              )
              
              
            ],),

            SizedBox(height: 50,),
            
   
          Container(
            height: 500,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: profileData.length,
              itemBuilder:   (context, index) {
              return ListTile(
                
                contentPadding: EdgeInsets.all(0),

                    leading: Icon(profileData[index]['Icon'],
                  ),
                  title: Text(profileData[index]['tittle']),
              );
            } ),
          )


          ],
        ),
      ),
    );
  }
}