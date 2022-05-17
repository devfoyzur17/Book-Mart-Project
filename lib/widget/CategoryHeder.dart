// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names 
import 'package:book_mart_project/screen/books_page.dart';
import 'package:flutter/material.dart';

import '../model/all-book.dart';
import '../screen/book_details.dart'; 
class CategoryHeder extends StatelessWidget {
  final String HederTitle;
  final List<AllBook> Book;
  CategoryHeder(this.HederTitle, this.Book);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(HederTitle,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BooksPage(Book,HederTitle)));
            },
            child: Text("আরো দেখুন", style: TextStyle(color: Colors.grey))),
      ],
    );
  }
}
 