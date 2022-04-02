import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: ListView(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              ),
              SizedBox(
                height: 10,
              ),
              Center(child: Text('user name')),
              SizedBox(
                height: 10,
              ),
              Center(child: Text('bio')),
              SizedBox(
                height: 10,
              ),
              Text("name:",
                  style: TextStyle(
                    fontSize: 16.5,
                    
                  )),
              SizedBox(
                height: 10,
              ),
              Text("email:",
                  style: TextStyle(
                    fontSize: 16.5,
                    
                  )),
              SizedBox(
                height: 10,
              ),
              Text("Order history:",
                  style: TextStyle(
                    fontSize: 16.5,
                    
                  )),
              SizedBox(
                height: 10,
              ),
              Text("Libray:",
                  style: TextStyle(
                    fontSize: 16.5,
                    
                  )),
              SizedBox(
                height: 10,
              ),
              Text("setting:",
                  style: TextStyle(
                    fontSize: 16.5,
                    
                  )),
              SizedBox(
                height: 10,
              ),
              Text("Log out:",
                  style: TextStyle(
                    fontSize: 16.5,
                    
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
