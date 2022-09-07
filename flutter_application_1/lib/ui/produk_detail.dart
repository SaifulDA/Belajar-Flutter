import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ProdukDetail({Key? key, required this.kodeProduk, required this.namaProduk, required this.harga}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProdukDetailState createState() => _ProdukDetailState();

}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Detail Produk"),
    ),
    body: Column(children: [
      Text("Kode Produk : " + widget.kodeProduk),
      Text("Nama Produk :  ${widget.namaProduk}"),
      Text("Harga : ${widget.harga.toString()}"),
    ],),
  );
}
}