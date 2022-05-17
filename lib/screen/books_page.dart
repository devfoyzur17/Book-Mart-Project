
// ignore_for_file: prefer_const_constructors

import 'package:book_mart_project/model/all-book.dart';
import 'package:flutter/material.dart';

import 'book_details.dart';

class BooksPage extends StatefulWidget {
  final List<AllBook> book;
  final String hederTitle;

   BooksPage(this.book, this.hederTitle);

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(widget.hederTitle),
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
              itemCount: widget.book.length,
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
                        GestureDetector(
                            onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetails(recieveData: widget.book[index], bookList: widget.book,)));
                        },
                          
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              widget.book[index].image,
                              height: 160,
                              width: 105,
                              fit: BoxFit.cover,
                            ),
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
                                          color: Colors.yellow,
                                          size: 15,
                                        ))),
                            FittedBox(
                              child: Text(
                                widget.book[index].bookName,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                widget.book[index].authorName,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Text(widget.book[index].price),
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
}