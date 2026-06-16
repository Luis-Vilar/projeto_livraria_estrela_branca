import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key, required this.title, required this.author});

  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: .ellipsis,
          style: const TextStyle(
            fontWeight: .bold,
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
        const Divider(height: 4, color: Colors.transparent),
        Text(
          author,
          maxLines: 1,
          overflow: .ellipsis,
          style: TextStyle(fontSize: 13, color: Colors.grey[600]),
        ),
        const Divider(height: 4, color: Colors.transparent),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey[400]!),
                padding: const .symmetric(horizontal: 12, vertical: 8),
                minimumSize: .zero,
                tapTargetSize: .shrinkWrap,
                shape: RoundedRectangleBorder(borderRadius: .circular(20)),
              ),
              child: const Text(
                'Ler Mais',
                style: TextStyle(color: Colors.black54, fontSize: 10),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF333333),
                foregroundColor: Colors.white,
                padding: const .symmetric(horizontal: 14, vertical: 8),
                minimumSize: Size.zero,
                tapTargetSize: .shrinkWrap,
                shape: RoundedRectangleBorder(borderRadius: .circular(20)),
              ),
              child: const Text('Comprar', style: TextStyle(fontSize: 10)),
            ),
          ],
        ),
      ],
    );
  }
}
