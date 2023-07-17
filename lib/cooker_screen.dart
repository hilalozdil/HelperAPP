import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helper_app/cooker_detail_screen.dart';
import 'package:helper_app/helper_screen.dart';
import 'package:helper_app/child_screen.dart';
import 'package:helper_app/menu_screen.dart';
import 'package:helper_app/nurse_screen.dart';

class People {
  String? name;
  String? surname;
  double? age;
  String? konum;
  bool? isFemale;
  String? imageUrl;
  Color? backgroundColor;
  String? aciklama;

  People({
    this.name,
    this.surname,
    this.age,
    this.konum,
    this.isFemale,
    this.imageUrl,
    this.backgroundColor,
    this.aciklama,
  });
}

class CookerScreen extends StatefulWidget {
  @override
  _CookerScreenState createState() => _CookerScreenState();
}

class _CookerScreenState extends State<CookerScreen> {
  int selectedPeopleIconIndex = 0;

  final List<People> peoples = [
    People(
      name: 'Chan',
      surname: 'Bii (7 sene)',
      age: 30,
      konum: 'Bursa',
      isFemale: true,
      imageUrl: 'assets/chan.jpg',
      backgroundColor: Color.fromRGBO(218, 204, 175, 1),
      aciklama:
          'Merhaba ben Chan Bii. 3 senedir Türkiyede yaşıyorum. Burada lüks otellerde çalıştım. 7 senedir tecrübeli bir aşçıyım. Uzmanlık alanım Uzak Doğu mutfağıyla birlikte tüm dünya yemeklerine hakimim. El lezzetime güveniyorum. ',
    ),
    People(
      name: 'Sevda',
      surname: 'Kılıç (12 sene)',
      age: 34,
      konum: 'İstanbul',
      isFemale: true,
      imageUrl: 'assets/gülfidan.jpg',
      backgroundColor: Color.fromRGBO(218, 204, 175, 1),
      aciklama:
          'Merhaba ben Sevda Kılıç. 7 senedir profesyonel bir aşçıyım. Daha önce okullarda ve bazı büyük şirketlerde aşçılık yaptım. Diyet menüleri de yapıyorum. Yemeklerimi tadanlar bu zamana kadar hep memnun kaldılar sizlerinde memnun kalacağınızdan eminim.',
    ),
    People(
      name: 'Hasan',
      surname: 'Çoban (20 sene)',
      age: 35,
      konum: 'Niğde',
      isFemale: false,
      imageUrl: 'assets/hakan.jpg',
      backgroundColor: Color.fromRGBO(218, 204, 175, 1),
      aciklama:
          'Merhaba ben Hasan Çoban. Çocukluğumda ocakbaşı restoranımız vardı dolayısıyla çok uzun zamandır bu işin içindeyim. Her türlü kebap, ızgara, ocakbaşı yemekleri benden sorulur.  ',
    ),
    People(
      name: 'Luici',
      surname: 'Molito (8 sene)',
      age: 29,
      konum: 'İzmir',
      isFemale: false,
      imageUrl: 'assets/lucas.jpg',
      backgroundColor: Color.fromRGBO(218, 204, 175, 1),
      aciklama:
          'Merhaba ben Luici Molito. İtalyan bir şefim. 4 senedir Türkiyede yaşıyorum. İtalyan restoranı uzmanlık alanım. Özellikle pizza ve makarnalarımı tadan bir kez daha tatmak istiyor. Türkiyede Türk yemeklerini de öğrendim. Yemeklerime bayılacağınıza eminim.',
    ),
  ];

  List<String> peopleTypes = [
    'Temizlik',
    'Yemek',
    'Çocuk Bakım',
    'Hasta Bakım',
  ];

  List<IconData> peopleIcons = [
    FontAwesomeIcons.broom,
    FontAwesomeIcons.utensils,
    FontAwesomeIcons.babyCarriage,
    FontAwesomeIcons.syringe,
  ];

  Widget buildPeopleIcon(index, sayfa) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => sayfa));
              /*setState(() {
                selectedPeopleIconIndex == index;
              });*/
            },
            child: Material(
              color: Colors.white,
              elevation: 8.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  peopleIcons[index],
                  size: 30.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            peopleTypes[index],
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Material(
        child: Padding(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuScreen()),
                          );
                        },
                        child: Icon(FontAwesomeIcons.bars)),
                    Column(
                      children: <Widget>[
                        Text(
                          'Konum Bilgisi',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.4),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mapMarkerAlt,
                              color: Theme.of(context).primaryColor,
                            ),
                            Text(
                              'Karaman,',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                            Text(
                              'Türkiye',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 22.0,
                      backgroundImage: AssetImage('assets/profilephoto.jpg'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Theme.of(context).primaryColor.withOpacity(0.06),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 22.0,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)),
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.search,
                                  color: Colors.grey,
                                ),
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(fontSize: 18.0),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        hintText: 'Yardımcı ara'),
                                  ),
                                ),
                                Icon(
                                  FontAwesomeIcons.filter,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildPeopleIcon(0, HelperScreen()),
                            buildPeopleIcon(1, CookerScreen()),
                            buildPeopleIcon(2, ChildScreen()),
                            buildPeopleIcon(3, NurseScreen()),
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: peoples.length,
                              itemBuilder: (context, index) {
                                final people = peoples[index];

                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CookerDetailScreen(
                                                image: people.imageUrl!,
                                                text: people.aciklama!,
                                              )),
                                    );
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 28.0,
                                      right: 20.0,
                                      left: 20.0,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: <Widget>[
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          elevation: 4.0,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 20.0,
                                              vertical: 20.0,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: deviceWidth * 0.4,
                                                ),
                                                Flexible(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: <Widget>[
                                                          Text(
                                                            people.name
                                                                .toString(),
                                                            style: TextStyle(
                                                              fontSize: 26.0,
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          Icon(people.isFemale ==
                                                                  true
                                                              ? FontAwesomeIcons
                                                                  .venus
                                                              : FontAwesomeIcons
                                                                  .mars),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 10.0,
                                                      ),
                                                      Text(
                                                        people.surname
                                                            .toString(),
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10.0,
                                                      ),
                                                      Text(
                                                        '${people.age} yaşında',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10.0,
                                                      ),
                                                      Row(
                                                        children: <Widget>[
                                                          Icon(
                                                            FontAwesomeIcons
                                                                .mapMarkerAlt,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            size: 16.0,
                                                          ),
                                                          SizedBox(
                                                            width: 6.0,
                                                          ),
                                                          Text(
                                                            'Konum: ${people.konum}',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Stack(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                color: people.backgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              height: 220.0,
                                              width: deviceWidth * 0.4,
                                            ),
                                            Image(
                                              image:
                                                  AssetImage(people.imageUrl!),
                                              height: 220.0,
                                              width: deviceWidth * 0.4,
                                            ),
                                          ],
                                          alignment: Alignment.center,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
