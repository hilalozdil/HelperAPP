import 'package:flutter/material.dart';
import 'package:helper_app/helper_screen.dart';
import 'package:helper_app/helper_detail_screen.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<Map<String, dynamic>> favoritesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoriler'),
      ),
      body: favoritesList.isEmpty
          ? Center(
              child: Text('Henüz favori yardımcı yok.'),
            )
          : ListView.builder(
              itemCount: favoritesList.length,
              itemBuilder: (context, index) {
                var favoriYardimci = favoritesList[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(favoriYardimci['image']),
                  ),
                  title: Text(favoriYardimci['text']),
                  // Diğer bilgileri göstermek için burayı düzenleyebilirsiniz
                );
              },
            ),
    );
  }
}
