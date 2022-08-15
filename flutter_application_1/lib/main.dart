// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/hello_world.dart';
//import 'package:flutter_application_1/column_widget.dart';
//import 'package:flutter_application_1/row_widget.dart';
import 'package:flutter_application_1/ui/form_product.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      home:ProdukForm(),
    );
  }
}