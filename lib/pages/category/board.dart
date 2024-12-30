import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  final String title;
  final String category;
  final String ageGroup;
  const Board(this.title, this.category, this.ageGroup, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Welcome to $title Page')),
    );
  }
}