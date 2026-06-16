abstract class Book {
  String title;
  String author;
  String imageUrl;
  Book({required this.title, required this.author, required this.imageUrl});
}

class BookModel extends Book {
  BookModel({
    required super.title,
    required super.author,
    required super.imageUrl,
  });

  BookModel.fromJson({required Map<String, dynamic> map})
    : super(
        author: map['author'] as String,
        title: map['title'] as String,
        imageUrl: map['imageUrl'] as String,
      );
}
