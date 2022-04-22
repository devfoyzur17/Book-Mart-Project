 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controller/book_controller.dart';
import '../data/book_category.dart';
import '../model/all-book.dart';
import '../screen/book-category_details.dart';
import 'CategoryHeder.dart';

class BookCategory extends StatefulWidget {

   late final List<AllBook> book;

  @override
  _BookCategoryState createState() => _BookCategoryState();
}

class _BookCategoryState extends State<BookCategory> {

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      margin: EdgeInsets.only(bottom: 200),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(categoryList[index].categoryTitle),
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(categoryList[index].categoryImage,),
              ),
              subtitle: Text(categoryList[index].categoryQuantity),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BookCategoryDetails(books: [])));
              },
            );
          }),
    );
  }
}
