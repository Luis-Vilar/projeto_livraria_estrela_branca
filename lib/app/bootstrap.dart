import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:projeto_livraria_estrela_branca/app/view/pages/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          leading: const Icon(Icons.star, color: Colors.white),
          title: const Text(
            'Livraria Estrela branca',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: const HomePage(),
      ),
    );
  }
}

void bootstrap() => runZonedGuarded(
  () {
    runApp(const MainApp());
  },
  (error, stackTrace) {
    log('Uncontrolled Error : ', error: error, stackTrace: stackTrace);
    debugger(message: error.toString());
  },
);
