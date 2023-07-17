import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helper_app/cooker_screen.dart';

class CookerDetailScreen extends StatefulWidget {
  CookerDetailScreen({this.image, this.text});
  final image;
  final text;
  @override
  State<CookerDetailScreen> createState() => _CookerDetailScreenState();
}

class _CookerDetailScreenState extends State<CookerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: screenHeight * 0.5,
                    color: Theme.of(context).primaryColor.withOpacity(0.06),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CookerScreen()),
                                );
                              },
                              child: Icon(
                                FontAwesomeIcons.arrowLeft,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.5,
                    child: Image(
                      image: AssetImage(widget.image),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.0,
                      vertical: 22.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage:
                                      AssetImage('assets/profilephoto.jpg'),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hilal Özdil',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '3 Mart 2022',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          widget.text,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          elevation: 4.0,
                          color: Theme.of(context).primaryColor,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20.0),
                              onTap: () {
                                print('Kabul edildi!');
                              },
                              child: Padding(
                                padding: EdgeInsets.all(17.0),
                                child: Text(
                                  'Kabul et',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(20.0),
                        elevation: 4.0,
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: EdgeInsets.all(9.0),
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.heart),
                            color: Colors.white,
                            onPressed: () {
                              print("Butona 1 kez tıklandı");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                height: 140,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.06),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
