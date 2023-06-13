import 'package:flutter/material.dart';
import 'helper_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? username;
  String? password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.06),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  labelText: "E-Posta ",
                  labelStyle: TextStyle(color: Colors.brown),
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  //girilen değerin boş olup olmadığını anlamak. eklediğimiz her değer valueya atanır.
                  if (value!.isEmpty) {
                    return "Eposta Giriniz";
                  } else if (!value.contains('@')) {
                    return "Geçerli bir e-posta adresi giriniz";
                  }
                  return null;
                },
                onSaved: (value) {
                  username = value;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  labelText: "Şifre ",
                  labelStyle: TextStyle(color: Colors.brown),
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Şifrenizi Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    child: Text("Üye Ol"),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    child: Text("Şifremi Unuttum"),
                    onPressed: () {},
                  ),
                ],
              ),
              _loginButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginButton() => ElevatedButton(
        child: Text("Giriş Yap"),
        onPressed: () {
          if (_formKey.currentState != null &&
              _formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            if (username!.contains('@')) {
              debugPrint("Giriş Başarilidir");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelperScreen()),
              );
            } else {
              if (username != null && password != null) {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Hata"),
                        content: Text("Geçerli bir e posta adresi giriniz"),
                        actions: <Widget>[
                          MaterialButton(
                              child: Text("Geri Dön"),
                              onPressed: () => Navigator.pop(context))
                        ],
                      );
                    });
              }
            }
          }
        },
      );
}
