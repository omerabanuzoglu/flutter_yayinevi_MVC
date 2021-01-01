import 'package:flutter/material.dart';

class SatinAl extends StatefulWidget {
  final String resim;
  final String baslik;
  final String bolum;
  final int fiyat;

  const SatinAl({Key key, this.baslik, this.bolum, this.fiyat, this.resim})
      : super(key: key);
  @override
  _SatinAlState createState() => _SatinAlState();
}

class _SatinAlState extends State<SatinAl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "Satın Alma",
          style: TextStyle(fontFamily: "Audiowide"),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          ListTile(
            title: Text(
              widget.baslik,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            leading: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                    widget.resim,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            trailing: Text(
              "${widget.fiyat} ₺",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(thickness: 2),
        ],
      ),
    );
  }
}
