import 'package:flutter/material.dart';
import 'package:yayin_evi/satinAl.dart';

class Incele extends StatefulWidget {
  final String resim;
  final String baslik;

  const Incele({Key key, this.resim, this.baslik}) : super(key: key);
  @override
  _InceleState createState() => _InceleState();
}

class _InceleState extends State<Incele> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "İncele",
          style: TextStyle(
            fontFamily: "Audiowide",
          ),
        ),
      ),
      body: inceleSayfa(
        widget.resim,
        widget.baslik,
      ),
    );
  }

  Widget inceleSayfa(String resim, String baslik) {
    return ListView(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      children: [
        //resim
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                resim,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        //başlık
        Text(
          baslik,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: "Audiowide",
          ),
        ),
        SizedBox(height: 10),
        //özellikleri
        Container(
          padding: EdgeInsets.only(top: 10),
          height: 210,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                "1000 Adet birbirinden farklı sorular.",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 21,
                ),
              ),
              Divider(thickness: 2),
              Text(
                "Eğitici ve kalıcı sorular.",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 21,
                ),
              ),
              Divider(thickness: 2),
              Text(
                "Çıkmış Sorular.",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 21,
                ),
              ),
              Divider(thickness: 2),
              Text(
                "Akademisyenlerin hazıladığı sorular.",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 21,
                ),
              ),
              Divider(thickness: 2),
              Text(
                "YÖK ve MEB onaylı.",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 21,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        //satınalma
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SatinAl(
                  fiyat: 34,
                  baslik: baslik,
                  resim: resim,
                ),
              ),
            );
          },
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 50,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(height: 8),
                Text(
                  "Satın Al",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "Audiowide"),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
