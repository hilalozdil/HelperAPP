import 'package:flutter/material.dart';

class AddRecordPage extends StatefulWidget {
  @override
  _AddRecordPageState createState() => _AddRecordPageState();
}

class _AddRecordPageState extends State<AddRecordPage> {
  String selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(166, 148, 111, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(166, 148, 111, 1.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('KAYIT EKLEME'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 150.0,
              height: 150.0,
              color: Colors.white70,
              child: Center(
                child: Text(
                  'Görsel Yükleyiniz',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _showCategorySelectionDialog();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.brown),
              ),
              child: Text('Sayfa Seçin'),
            ),
            SizedBox(height: 16.0),
            Center(
              child:
                  TextFormField(decoration: InputDecoration(labelText: 'Adı')),
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Soyadı'),
              ),
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Cinsiyeti'),
              ),
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Yaşı'),
              ),
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Konumu'),
              ),
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Açıklama'),
                maxLines: 4,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.brown)),
                  child: Text('Kayıt Ekle'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCategorySelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Sayfa Seçin',
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Temizlik'),
                onTap: () {
                  setState(() {
                    selectedPage = 'Temizlik';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Yemek'),
                onTap: () {
                  setState(() {
                    selectedPage = 'Yemek';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Çocuk Bakım'),
                onTap: () {
                  setState(() {
                    selectedPage = 'Çocuk Bakım';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Hasta Bakım'),
                onTap: () {
                  setState(() {
                    selectedPage = 'Hasta Bakım';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
