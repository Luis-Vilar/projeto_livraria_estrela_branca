import 'package:flutter/material.dart';
import 'package:projeto_livraria_estrela_branca/app/view/components/book_card/footer_widget.dart';
import 'package:projeto_livraria_estrela_branca/app/view/components/book_card/image_widget.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String? imageUrl;

  const BookCard({
    super.key,
    required this.title,
    required this.author,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                ImageWidget(imageUrl: imageUrl ?? ''),
                const SizedBox(height: 12),
                FooterWidget(title: title, author: author),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
