import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(190, 175, 143, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(190, 175, 143, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('PROFİLİM'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/profilephoto.jpg'),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ad Soyad   -   Hilal Özdil',
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-posta   -   hilalozdl@gmail.com',
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Telefon No   -   05424222222',
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Konum   -   Karaman/Türkiye',
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Şifre   -   ******',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Profili Düzenle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
