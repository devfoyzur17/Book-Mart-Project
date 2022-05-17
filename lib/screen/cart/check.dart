
import 'package:flutter/material.dart';

class Check extends StatelessWidget {
  const Check({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart")),
      body: Center(
        child: Text("No book selected!!"),
      ),
    );
  }
}