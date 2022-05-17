// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:book_mart_project/model/all-book.dart';
import 'package:flutter/material.dart';


import '../model/cartdata.dart';

class CartPage extends StatefulWidget {
  final List<AllBook> newBookData;
  CartPage({required this.newBookData});
   
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  
 
  @override
  Widget build(BuildContext context) {
    var bookPrice = widget.newBookData[0].price;
    return Scaffold(
       
      appBar: AppBar(title: Text("My Cart"),),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: widget.newBookData.isEmpty? Text("data"): Column(
            children: [
        
              Flexible(

                flex: 5,
                 
            
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: widget.newBookData.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: 160,
                                    width: 105,
                                    child: Image.asset(widget.newBookData[index].image)),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          widget.newBookData[index].bookName,
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(widget.newBookData[index].authorName),
                                        Text(widget.newBookData[index].price),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              
                                          children: [
                                            Text("Total Readed:1M+".toString()),
                                            IconButton(
                                                onPressed: () {
                                                  // setState(() {
      
                                                  // });
                                                },
                                                icon: Icon(Icons.delete)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
             Flexible(
               flex: 2,
               child: Column(
                 children: [
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Amunt ",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("${bookPrice}৳",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "pay ment ",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '${bookPrice} ৳',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 40,
                    margin: EdgeInsets.only(
                      right: 150,
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10),
                        hintText: "Type promo code here",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Pay Now!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), Icon(Icons.arrow_forward)],
                    ),
                  ),
                )
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
