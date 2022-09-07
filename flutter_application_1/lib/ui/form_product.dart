
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/produk_detail.dart';
//import 'package:path/path.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
_ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
final _kodeProdukTextboxController = TextEditingController();
final _namaProdukTextboxController = TextEditingController();
final _hargaProdukTextboxController = TextEditingController();
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Form Produk'),
    ),
    body: SingleChildScrollView(
      child: Column(
        children:  [
          _textboxKodeProduk(),
          _textboxNamaProduk(),
          _textboxHargaProduk(),
          _tombolSimpan()
        ],
      )
      ),
  );
}
}

_textboxKodeProduk(){
  var kodeProdukTextboxController;
  return TextField(
    decoration: const InputDecoration(labelText: "Kode Produk"),
    controller: kodeProdukTextboxController,
  );
}
_textboxNamaProduk(){
  var namaProdukTextboxController;
  return TextField(
    decoration: const InputDecoration(labelText: "Nama Produk"),
    controller: namaProdukTextboxController,
  );
}
_textboxHargaProduk(){
  var hargaProdukTextboxController;
  return TextField(
    decoration: const InputDecoration(labelText: "Harga Produk"),
    controller: hargaProdukTextboxController,
  );
}
_tombolSimpan(){
  return Builder(
    builder: (context) {
      return RaisedButton(
        child: const Text('Simpan'),
        onPressed: () {
          var _kodeProdukTextboxController;
          String kodeProduk = _kodeProdukTextboxController.Text;
          var _namaProdukTextboxController;
          String namaProduk = _namaProdukTextboxController.Text;
          var _hargaProdukTextboxController;
          int harga = int.parse(_hargaProdukTextboxController.Text);

          Navigator.of(context).push( MaterialPageRoute(builder: (context)=>ProdukDetail(kodeProduk:kodeProduk, namaProduk: namaProduk, harga: harga,)));
        },
      );
    }
  );
}

