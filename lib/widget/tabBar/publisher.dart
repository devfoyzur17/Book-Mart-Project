

// ignore_for_file: prefer_const_constructors

import 'package:book_mart_project/data/tabbarElement/publisher_data.dart';
import 'package:flutter/material.dart';

import '../../data/tabbarElement/popular.dart';

class PublisherPage extends StatefulWidget {
  const PublisherPage({ Key? key }) : super(key: key);

  @override
  State<PublisherPage> createState() => _PublisherPageState();
}

class _PublisherPageState extends State<PublisherPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 210),
              //height: ,
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: publisherData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 200,
                  ),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                         decoration: BoxDecoration(
                           //color: Color(0xffffccff),
                           borderRadius: BorderRadius.circular(20)
                         ),
                        
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(publisherData[index].publisherImage),
                             ),
                            SizedBox(height: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(child: Text(publisherData[index].publisherName,style: TextStyle(fontWeight: FontWeight.bold),)),
                               
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