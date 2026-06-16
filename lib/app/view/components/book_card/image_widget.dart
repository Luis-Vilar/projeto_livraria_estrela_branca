import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;

  const ImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFE0E0E0),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) => _buildNoCover(),
          ),
        ),
      ),
    );
  }
}

Widget _buildNoCover() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.book, color: Colors.grey, size: 40),
      SizedBox(height: 8),
      Text(
        'Capa indisponível',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ],
  );
}
