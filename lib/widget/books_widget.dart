
 // ignore_for_file: prefer_const_constructors
 
import 'package:flutter/material.dart';

import '../model/all-book.dart';
import '../screen/book_details.dart';

class BooksWidget extends StatelessWidget {
  final List<AllBook> booksData;

  BooksWidget(this.booksData);

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 230,
       width: 160,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 105,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetails(recieveData: booksData[index], bookList: booksData,)));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            booksData[index].image,
                            height: 160,
                            width: 105,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: FittedBox(
                          child: Text(
                            booksData[index].bookName,
                            style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                      Text(booksData[index].authorName,
                          style:
                              TextStyle(fontSize: 11, color: Colors.black54)),
                      Text(booksData[index].price,
                          style: TextStyle(fontSize: 13, color:  Colors.red))
                    ]),
              ),
            );
          }),
    );
  }
}
