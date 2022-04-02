
import 'package:flutter/material.dart';

import '../../model/all-book.dart';

class BD extends StatefulWidget {
  final AllBook recivedata;
  const BD({ Key? key,required this.recivedata }) : super(key: key);

  @override
  State<BD> createState() => _BDState();
}

class _BDState extends State<BD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
      appBar: AppBar(title: Text(widget.recivedata.bookName),),
    );
  }
}