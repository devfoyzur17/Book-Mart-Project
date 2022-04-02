
// import 'package:book_mart/model/all-book.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';


// class Books_page1 extends StatelessWidget {
//   const Books_page1(List<AllBook> book, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ডিপ্লোমা"),
//         backgroundColor: Color(0xff0d964c),
//       ),
//       body: Container(
//         child: ListView(
//           children: [
//             Container(
//               padding: EdgeInsets.only(bottom: 210, top: 10),
//               //height: ,
//               child: GridView.builder(
//                   physics: BouncingScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: 30,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     mainAxisExtent: 250,
//                   ),
//                   itemBuilder: (context,index){
//                     return Container(
//                       height: MediaQuery.of(context).size.height,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 10, right: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(5),
//                               child: Image.asset(Diploma[index].imgageUrl,height:160, width: 105,fit: BoxFit.cover,),
//                             ),
//                             SizedBox(height: 10,),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Wrap(
//                                     children:
//                                     List.generate(5, (index) => Icon(Icons.star,color: Color(0xff89dad0),size: 15,))
//                                 ),
//                                 Text(Book[index].bookName,style: TextStyle(fontWeight: FontWeight.bold),),
//                                 Text(Diploma[index].authorName,style: TextStyle(color: Colors.grey),),
//                                 Text(Diploma[index].price),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
