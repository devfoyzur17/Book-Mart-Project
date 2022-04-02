
import 'package:flutter/material.dart';

import '../../data/tabbarElement/newBook.dart';

class newBook extends StatefulWidget {
  const newBook({ Key? key }) : super(key: key);

  @override
  State<newBook> createState() => _newBookState();
}

class _newBookState extends State<newBook> {
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
                  itemCount: NewBook.length,
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
                            child: Image.asset(NewBook[index].image,height:160, width: 105,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(NewBook[index].bookName,style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(NewBook[index].authorName,style: TextStyle(color: Colors.grey),),
                              Text(NewBook[index].price),
                            ],
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