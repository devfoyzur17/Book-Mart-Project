import 'package:flutter/material.dart';

import '../../data/tabbarElement/popular.dart';

class PopularBooks extends StatelessWidget {
  const PopularBooks({ Key? key }) : super(key: key);

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
                  itemCount: Popular.length,
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
                            child: Image.asset(Popular[index].image,height:160, width: 105,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Popular[index].bookName,style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(Popular[index].authorName,style: TextStyle(color: Colors.grey),),
                              Text(Popular[index].price),
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