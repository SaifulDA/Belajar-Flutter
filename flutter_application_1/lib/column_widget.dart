import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Column'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text('kolom 1'),
          const Text('kolom 2'),
          const Text('kolom 3'),
          const Text('kolom 4'),
          const Text('kolom 5'),
        ],
      ),
    );
  }
}