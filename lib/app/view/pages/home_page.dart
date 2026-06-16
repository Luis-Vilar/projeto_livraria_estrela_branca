import 'package:flutter/material.dart';
import 'package:projeto_livraria_estrela_branca/app/models/home_view/home_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = (screenWidth / 2) * 0.99;

    HomeViewModel homeViewModel = HomeViewModel();

    return SingleChildScrollView(
      child: Wrap(children: homeViewModel.listBookCards(width: cardWidth)),
    );
  }
}
