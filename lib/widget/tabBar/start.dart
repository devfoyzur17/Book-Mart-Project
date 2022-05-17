// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../controller/book_controller.dart';
import '../../model/all-book.dart';
import '../CategoryHeder.dart';
import '../books_widget.dart';

class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  List<AllBook> thisWeak = BookClass().faceData("thisWeak");
  List<AllBook> thisApp = BookClass().faceData("thisApp");
  List<AllBook> islamic = BookClass().faceData("islamic");
  List<AllBook> kobita = BookClass().faceData("kobita");
  List<AllBook> motivational = BookClass().faceData("motivational");
  List<AllBook> romantic = BookClass().faceData("romantic");
  List<AllBook> diploma = BookClass().faceData("diploma");
  List<AllBook> progmming = BookClass().faceData("progmming");
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 200),
        child: ListView(
          children: [
            // sliderWidget(),// slider ********************************************************************
            CategoryHeder("এই সপ্তাহের নতুন বই", thisWeak),
            BooksWidget(
                thisWeak), // এই সপ্তাহের নতুন বই *************************************************************************
            CategoryHeder("শুধু মাত্র এই অ্যাপে", thisApp),
            BooksWidget(
                thisApp), // শুধু মাত্র এই অ্যাাপ এ পাবেন *****************************************************************
            CategoryHeder("ইসলামিক", islamic),
            BooksWidget(islamic),
            CategoryHeder("কবিতা",
                kobita), // ইসলামিক ********************************************************************************
            BooksWidget(
                kobita), // কবিতা  ********************************************************************************
            CategoryHeder("মোটিভেশনাল", motivational),
            BooksWidget(
                motivational), // মোটিভেশনাল  ********************************************************************************
            CategoryHeder("রোমান্টিক", romantic),
            BooksWidget(
                romantic), // রোমান্টিক  ********************************************************************************

            CategoryHeder("ডিপ্লোমা", diploma),
            BooksWidget(diploma),
            CategoryHeder("প্রোগ্রামিং",
                progmming), // ডিপ্লোমা  ********************************************************************************
            BooksWidget(
                progmming), // প্রোগ্রামিং  ********************************************************************************
          ],
        ),
      ),
    );
  }
}
