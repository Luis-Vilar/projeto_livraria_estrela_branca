// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:projeto_livraria_estrela_branca/app/data/book_repository.dart';
import 'package:projeto_livraria_estrela_branca/app/view/components/book_card/book_card_component.dart';

class HomeViewModel {
  final BookRepository _bookRepository = BookRepository();

  List<SizedBox> listBookCards({required double width}) => _bookRepository
      .getBooks()
      .map(
        (book) => SizedBox(
          width: width,
          height: width * 1.8,
          child: BookCard(
            title: book.title,
            author: book.author,
            imageUrl: book.imageUrl,
          ),
        ),
      )
      .toList();
}
