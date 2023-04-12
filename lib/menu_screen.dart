import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helper_app/helper_screen.dart';
import 'main.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedMenuIndex = 0;

  List<String> menuItems = [
    'Yardımcılar',
    'Kayıt Ekleme',
    'Favorilerim',
    'Profilim',
  ];

  List<IconData> icons = [
    FontAwesomeIcons.peopleArrows,
    FontAwesomeIcons.plus,
    FontAwesomeIcons.heart,
    FontAwesomeIcons.userAlt,
  ];

  Widget buildMenuRow(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedMenuIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0),
        child: Row(
          children: <Widget>[
            Icon(
              icons[index],
              color: selectedMenuIndex == index
                  ? Colors.white
                  : Colors.white.withOpacity(0.5),
            ),
            SizedBox(
              width: 16.0,
            ),
            Text(
              menuItems[index],
              style: TextStyle(
                color: selectedMenuIndex == index
                    ? Colors.white
                    : Colors.white.withOpacity(0.5),
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 24.0,
                      backgroundImage: AssetImage('assets/profilephoto.jpg'),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hilal Özdil',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 22.0,
                          ),
                        ),
                        Text(
                          'Karaman',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                /*Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: menuItems
                      .asMap()
                      .entries
                      .map((mapEntry) => buildMenuRow(mapEntry.key))
                      .toList(),
                ),   */
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Yardımcılar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HelperScreen()),
                    );
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Kayıt Ekleme',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HelperScreen()),
                    );
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Favorilerim',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HelperScreen()),
                    );
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Profilim',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HelperScreen()),
                    );
                  },
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.cog,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      'Ayarlar  |  Çıkış Yap',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [startingColor, mainColor])),
      ),
    );
  }
}
/*
  Row(
                     Text("not Register"),
                      TextButton(onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                            return SignUpScreen();
                       }));
 */

/*
ElevatedButton(onPressed: (){

              var fullName = fullNameController.text.trim();
              var email = emailController.text.trim();
              var password = passwordController.text.trim();
              var confirm = confirmController.text.trim();



              child: Text("sign up")),

            const SizedBox(height:10,),
            Row(
              children: [
                const Text("not Register"),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                    return TaskListScreen();
                  }));
                }, child: Text("register now")),
 */