// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
_ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Form Produk'),
    ),
    body: SingleChildScrollView(
      child: Column(
        children:  [
          const TextField(
            decoration: InputDecoration(labelText: "Kode Produk"),
          ),
           const TextField(
            decoration: InputDecoration(labelText: "Nama Produk"),
          ),
           const TextField(
            decoration: InputDecoration(labelText: "Harga Produk"),
          ),
          RaisedButton( 
            child:const Text('Simpan'),
            onPressed: () {},
            ),
        ],
      )
      ),
  );
}
}