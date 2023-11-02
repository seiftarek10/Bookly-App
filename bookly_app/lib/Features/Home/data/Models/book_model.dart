class BookModel {
  String? bookImage;
  String? title;
  String? author;
  num? rating;
  int? ratingCount;
  num? price;
  String? bookLink;

  BookModel(
      {required this.author,
      required this.bookImage,
      required this.bookLink,
      required this.price,
      required this.rating,
      required this.ratingCount,
      required this.title});

  factory BookModel.fromjson(json, int index) {
    return BookModel(
        author: json['items'][index]['volumeInfo']['authors'][0],
        bookImage: json['items'][index]['volumeInfo']['imageLinks']['thumbnail'],
        bookLink: json['items'][index]['volumeInfo']['previewLink'],
        price: json['items'][index]["saleInfo"]['listPrice']['amount'],
        rating: json['items'][index]['volumeInfo']['averageRating'],
        ratingCount: json['items'][index]['volumeInfo']['ratingsCount'],
        title: json['items'][index]['volumeInfo']['title']);
  }
}
