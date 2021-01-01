import 'package:flutter/material.dart';

Drawer myDrawer() {
  return Drawer(
    elevation: 0,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        // Başlık
        Container(
          height: 120,
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                "Poyraz Yayınevi",
                style: TextStyle(
                  fontFamily: "Audiowide",
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.blueGrey),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Ana Sayfa"),
            leading: Icon(
              Icons.home,
              size: 30,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("YKS"),
            leading: Icon(
              Icons.format_list_numbered,
              size: 30,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("DGS"),
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("ALES"),
            leading: Icon(
              Icons.offline_pin,
              size: 30,
            ),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Ayarlar"),
            leading: Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Hakkımızda"),
            leading: Icon(
              Icons.help_outline,
              size: 30,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("İstek ve Şikayet"),
            leading: Icon(
              Icons.swap_horizontal_circle,
              size: 30,
            ),
          ),
        ),
      ],
    ),
  );
}
