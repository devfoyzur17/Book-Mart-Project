
 // ignore_for_file: prefer_const_constructors
 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/all-book.dart';

class BookCategoryDetails extends StatelessWidget {

  //final String headerTitle;
  final List<AllBook> books;

  const BookCategoryDetails({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fg"),
        backgroundColor: Color(0xff0d964c),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              //height: ,
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(books[index].image,height:160, width: 105,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              
                              Text(books[index].bookName,style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(books[index].authorName,style: TextStyle(color: Colors.grey),),
                              Text(books[index].price),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
