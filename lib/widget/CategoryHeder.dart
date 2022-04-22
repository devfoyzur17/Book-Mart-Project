// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names 
import 'package:flutter/material.dart';

import '../model/all-book.dart'; 
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
                  MaterialPageRoute(builder: (context) => Books_page(Book,HederTitle)));
            },
            child: Text("আরো দেখুন", style: TextStyle(color: Colors.grey))),
      ],
    );
  }
}

Books_page(List<AllBook> booksPage, String hederTitle) {
  return Scaffold(
    appBar: AppBar(
      title: Text(hederTitle),
      backgroundColor: Color(0xff0d964c),
    ),
    body: ListView(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 210, top: 10),
          //height: ,
          child: GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: booksPage.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 250,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            booksPage[index].image,
                            height: 160,
                            width: 105,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                                children: List.generate(
                                    5,
                                    (index) => Icon(
                                          Icons.star,
                                          color: Color(0xff89dad0),
                                          size: 15,
                                        ))),
                            FittedBox(
                              child: Text(
                                booksPage[index].bookName,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                booksPage[index].authorName,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Text(booksPage[index].price),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    ),
  );
}
