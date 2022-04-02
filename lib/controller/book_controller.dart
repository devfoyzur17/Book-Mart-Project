import '../data/booksData.dart';
import '../model/all-book.dart';

class BookClass {
  List<AllBook> faceData(category) {
    List<AllBook> newList = [];
    for (int i = 0; i < booksList.length; i++) {
      if (booksList[i].booksCategory == category) {
        newList.add(booksList[i]);
      }
    }

    return newList;
  }
}
