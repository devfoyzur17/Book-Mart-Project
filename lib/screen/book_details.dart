// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../model/all-book.dart';

class BookDetails extends StatefulWidget {
  final AllBook recieveData;
  final List<AllBook> bookList;

  const BookDetails(
      {Key? key, required this.recieveData, required this.bookList})
      : super(key: key);

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Icon(Icons.shopping_cart_outlined),
                          CircleAvatar(
                            child: Text(
                              "0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold),
                            ),
                            backgroundColor: Colors.red,
                            radius: 6,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Divider(),
                Container(
                  //height: 350,
                  width: 300,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.recieveData.bookName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.recieveData.authorName,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(widget.recieveData.booksCategory),
                      SizedBox(
                        height: 10,
                      ),
                      Text(widget.recieveData.price),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          // allowHalfRating: fal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          widget.recieveData.image,
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 30,
                      child: SizedBox(
                          width: (MediaQuery.of(context).size.width) - 50,
                          height: 50,
                          child: OutlinedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffffffff),
                                onPrimary: Colors.white,
                                elevation: 2,
                                side: BorderSide(
                                  width: 2,
                                  color: Color(0xff0d964c),
                                )
                                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))

                                ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              color: Color(0xff0d964c),
                            ),
                            label: FittedBox(
                                child: Text(
                              "Add to cart",
                              style: TextStyle(
                                  color: Color(0xff0d964c),
                                  fontWeight: FontWeight.bold),
                            )),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        width: 120,
                        height: 30,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff0d964c),
                            onPrimary: Colors.white,
                            elevation: 2,
                            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.all(20),
                                    height: 250,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Your payable amount:",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Text(
                                              "৳50",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Local payment",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/payment_image/bkash.png",
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                Image.asset(
                                                  "assets/payment_image/nagad.png",
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                Image.asset(
                                                  "assets/payment_image/rocket.png",
                                                  height: 30,
                                                  width: 30,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Debit/Credit payment",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Image.asset(
                                              "assets/payment_image/visaCard.png",
                                              height: 50,
                                              width: 50,
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        SizedBox(
                                            width: (MediaQuery.of(context)
                                                    .size
                                                    .width) -
                                                50,
                                            height: 40,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Color(0xff0d964c),
                                                    onPrimary: Colors.white,
                                                    elevation: 2,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        32))),
                                                onPressed: () {},
                                                child: Text(
                                                  "Continue",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                  );
                                });
                          },
                          icon: Icon(Icons.book_outlined),
                          label: Text("Buy Now"),
                        )),
                  ],
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: RichText(
                    text: TextSpan(
                        text: "Description: ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text:
                                "It is a long established fact that a reader will be distracted by the readable content of a "
                                "page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less "
                                "normal distribution of letters, as opposed to using 'Content here, content here', making it "
                                "look like readable English. Many desktop publishing packages and web page editors now use "
                                "Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web "
                                "sites still in their infancy. Various versions have evolved over the years, sometimes by "
                                "accident, sometimes on purpose (injected humour and the like).",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          )
                        ]),
                  ),
                ),
                Divider(),
                Column(
                  children: [
                    Text(
                      "Some more books",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      //height: ,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, mainAxisExtent: 250),
                          itemBuilder: (context, index) {
                            return Container(
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      widget.bookList[index].image,
                                      height: 160,
                                      width: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.bookList[index].bookName,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        widget.bookList[index].authorName,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(widget.bookList[index].price),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
