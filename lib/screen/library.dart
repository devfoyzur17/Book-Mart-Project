 
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  Color appColor = Color(0xff0d964c);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Container(
              height: 160,
              width: 105,
              decoration: BoxDecoration(border: Border.all(color: Color(0xff0D964C))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 45,
                    child: FloatingActionButton(
                      backgroundColor:Color(0xff0D964C) ,
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "মোবাইল হতে বই যুক্ত করুন",
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
