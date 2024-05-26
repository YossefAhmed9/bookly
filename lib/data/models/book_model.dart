class BookModel {
  String title;
  // double price;
  List<dynamic> authors;
  // double rating;
   String smallThumbnail;
   String normalThumbnail;

  BookModel({
    required this.title,
    required this.authors,
    required this.normalThumbnail,
    required this.smallThumbnail,
    // required this.price,
    // required this.rating,
    // required this.thumbnail
  });

  factory BookModel.fromJson({required dynamic json,required int index}) {
    return BookModel(
        title: json['items'][index]['volumeInfo']['title'],
        authors: json['items'][index]['volumeInfo']['authors'],
      normalThumbnail:json['items'][index]['volumeInfo']['imageLinks']['thumbnail'] ,
      smallThumbnail: json['items'][index]['volumeInfo']['imageLinks']['smallThumbnail'],

    );
  }
}
