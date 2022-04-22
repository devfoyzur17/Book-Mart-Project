
// ignore_for_file: prefer_const_constructors

import 'package:book_mart_project/data/tabbarElement/freeBook.dart';
import 'package:flutter/material.dart';

import '../../data/tabbarElement/freeBook.dart';

class freeBook extends StatefulWidget {
  const freeBook({ Key? key }) : super(key: key);

  @override
  State<freeBook> createState() => _freeBookState();
}

class _freeBookState extends State<freeBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 210),
              //height: ,
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:FreeBook.length  ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      width: 105,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(FreeBook[index].image,height:160, width: 105,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(child: Text(FreeBook[index].bookName,style: TextStyle(fontWeight: FontWeight.bold),)),
                                Text(FreeBook[index].authorName,style: TextStyle(color: Colors.grey),),
                                Text(FreeBook[index].price, style: TextStyle(color: Colors.red),),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      );
  }
}