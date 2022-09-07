
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/form_product.dart';
import 'package:flutter_application_1/ui/produk_detail.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProdukForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("Kulkas"),
              subtitle: Text("2500000"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("TV"),
              subtitle: Text("5000000"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Meisn Cuci"),
              subtitle: Text("1500000"),
               ),
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  ItemProduk({required this.kodeProduk, required this.namaProduk, required this.harga});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProdukDetail(kodeProduk: kodeProduk, namaProduk: namaProduk, harga: harga)));
      },
    );
  }
}