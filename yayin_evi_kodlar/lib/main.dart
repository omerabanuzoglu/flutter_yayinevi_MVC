import 'package:flutter/material.dart';
import 'package:yayin_evi/incele.dart';
import 'package:yayin_evi/myDrawer.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Yayın Evi",
        home: AnaSayfa(),
      ),
    );

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Poyraz Yayınevi",
          style: TextStyle(
            fontFamily: "Audiowide",
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30),
            child: Container(
              child: Icon(
                Icons.shopping_cart,
                size: 35,
              ),
            ),
          ),
          SizedBox(width: 15)
        ],
      ),
      drawer: myDrawer(),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          urunKarti(
            "https://www.pegem.net/resim/urun/201517_B.jpg",
            "TYT Soru Bankası",
          ),
          urunKarti(
            "https://safakkitap.com.tr/Uploads/UrunResimleri/buyuk/ucdortbes-yayinlari-tyt-matematik-soru-b-4f01.jpg",
            "TYT Matematik",
          ),
          urunKarti(
            "https://www.kitapci.com.tr/tyt-ayt-biyoloji-soru-bankasi-ankara-yayincilik-yks-kitaplari-ankara-yayincilik-komisyon-14187-69-B.jpg",
            "TYT Biyoloji",
          ),
          urunKarti(
            "https://www.kitapci.com.tr/tyt-geometri-soru-bankasi-ankara-yayincilik-yks-kitaplari-ankara-yayincilik-ahmet-metuslah-dalkiran-sertac-karadasli-ozge-ad-14183-69-B.jpg",
            "TYT Geometri",
          ),
          urunKarti(
            "https://productimages.hepsiburada.net/s/31/300-443/10323595362354.jpg",
            "TYT Paragraf",
          ),
          urunKarti(
            "https://i.dr.com.tr/cache/500x400-0/originals/0001766916001-1.jpg",
            "TYT Türkçe",
          ),
          urunKarti(
            "https://productimages.hepsiburada.net/s/51/300-443/11086245167154.jpg",
            "12'li TYT Deneme",
          ),
          urunKarti(
            "https://s3.uygunkitapal.com/wp-content/uploads/2019/10/09190053/limit-tyt-felsefe.jpg",
            "TYT Felsefe",
          ),
          urunKarti(
            "https://www.nezih.com.tr/karekok-yks-biyololji-soru-bankasi-2oturum-81728-83-K.jpg",
            "AYT Biyoloji",
          ),
          urunKarti(
            "https://www.kitapci.com.tr/sifirdan-matematik-1-yks-kitaplari-ogreten-yayinlari-kolektif-20463-76-B.jpg",
            "Sıfırdan Matematik",
          ),
        ],
      ),
    );
  }

  Container urunKarti(String resim, String baslik) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 2, color: Colors.grey),
      ),
      child: Column(
        children: [
          //resim
          Container(
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  resim,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          //Başlık
          Text(
            baslik,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          //İnceleme
          InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Incele(
                    resim: resim,
                    baslik: baslik,
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "İncele",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
