import 'package:projeto_livraria_estrela_branca/app/models/book/book_model.dart';
import 'package:projeto_livraria_estrela_branca/app/data/book_service.dart'
    show BookService;

class BookRepository {
  final BookService _bookService = BookService();
  List<BookModel> getBooks() => _bookService
      .getBooks()
      .map((book) => BookModel.fromJson(map: book))
      .toList();
}
