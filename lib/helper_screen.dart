import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helper_app/cooker_screen.dart';
import 'package:helper_app/child_screen.dart';
import 'package:helper_app/helper_detail_screen.dart';
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

class HelperScreen extends StatefulWidget {
  @override
  _HelperScreenState createState() => _HelperScreenState();
}

class _HelperScreenState extends State<HelperScreen> {
  int selectedPeopleIconIndex = 0;

  final List<People> peoples = [
    People(
      name: 'Sultan',
      surname: 'Şen (12 sene)',
      age: 35.0,
      konum: 'Karaman',
      isFemale: true,
      imageUrl: 'assets/sultan.jpg',
      backgroundColor: Color.fromRGBO(238, 237, 237, 1),
      aciklama:
          'Merhaba ben Sultan Şen. 12 senedir profesyonel bir şekildde temizlik yapıyorum. Elim hızlı ve dikkatlidir. En keyif alarak yaptığım ve kendime güvendiğim iş banyo temizliği. Buzdolabı temizliği, mutfak dolapları temizği, iç dış cam temizliği gibi aklınıza gelebilecek her türlü temizliği yaparım.',
    ),
    People(
      name: 'Kadir ',
      surname: 'Ezildi (10 sene)',
      age: 28,
      konum: 'Konya',
      isFemale: false,
      imageUrl: 'assets/kadır.jpg',
      backgroundColor: Color.fromRGBO(238, 237, 237, 1),
      aciklama:
          'Merhaba ben Kadir Ezildi. 10 senedir temizlik hastalığım var. Fayans araları, kalorifer petekleri, muffak, banyo ve halıları yıkayıp detaylı temizleme gibi her şeyi yaparım. Temizlik hastalığım yüzünden evime misafir kabul etmiyorum. Sizin evinizi de kendi evim gibi temizleyeceğime güvenebilirsiniz. ',
    ),
    People(
      name: 'Deniz',
      surname: 'Şimşek (5 sene)',
      age: 29,
      konum: 'İstanbul',
      isFemale: false,
      imageUrl: 'assets/deniz.jpg',
      backgroundColor: Color.fromRGBO(238, 237, 237, 1),
      aciklama:
          'Merhaba ben Deniz Şimşek. 5 senedir profesyonel bir şekildde temizlik yapıyorum. Sektörde yeni olduğuma aldanmayın. El çabukluğum vardır. Tüm ev temizliği dışında apartman ve garaj temizliği de yaparım. Mutfak ve banyo için gerekli temizlik malzemelerini yanımda getiririm.',
    ),
    People(
      name: 'Fatma',
      surname: 'Hatun (16 sene)',
      age: 39,
      konum: 'İstanbul',
      isFemale: true,
      imageUrl: 'assets/fatma.jpg',
      backgroundColor: Color.fromRGBO(238, 237, 237, 1),
      aciklama:
          'Merhaba ben Fatma Hatun. Annem bir konağın yardımcısıydı. Orada büyüdüm ve dolayısıyla 16 senedir profesyonel temizlik yapıyor olsam da çocukluğumdan beri temizlik işine aşinayım. Her türlü işi yapabilirim, şüpheniz olmasın. ',
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
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => sayfa));
              /* setState(() {
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
                              color: Colors.brown,
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
                        /* Container(
                         height: 105.0,
                         child: ListView.builder(
                             padding: EdgeInsets.only(left: 20.0),
                             scrollDirection: Axis.horizontal,
                             itemCount: Types.length,
                             itemBuilder: (context, index) {
                                return buildPeopleIcon(index);
                             },),
                       ),*/
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
                                              HelperDetailScreen(
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
