import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helper_app/child_detail_screen.dart';
import 'package:helper_app/helper_screen.dart';
import 'package:helper_app/cooker_screen.dart';
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

class ChildScreen extends StatefulWidget {
  @override
  _ChildScreenState createState() => _ChildScreenState();
}

class _ChildScreenState extends State<ChildScreen> {
  int selectedPeopleIconIndex = 0;

  final List<People> peoples = [
    People(
      name: 'Ayşe',
      surname: 'Yılmaz (6 sene)',
      age: 38,
      konum: 'Karaman',
      isFemale: true,
      imageUrl: 'assets/ayşe.jpg',
      backgroundColor: Color.fromRGBO(203, 213, 216, 1.0),
      aciklama:
          'Merhaba ben Ayşe Yılmaz. 2 çocuğum var. Onları büyüttükten sonra bu işe başladım. 6 senedir bu işi yapıyorum. Çocuklarla çok iyi anlaşırım, onları kendi evlatlarımdan ayırmam. Gündüzleri çalışabilirim, yatılı çalışamam.',
    ),
    People(
      name: 'Farima',
      surname: 'Rose (4 sene)',
      age: 27,
      konum: 'Manisa',
      isFemale: true,
      imageUrl: 'assets/farima.jpg',
      backgroundColor: Color.fromRGBO(237, 214, 180, 1.0),
      aciklama:
          'Merhaba ben Farima Rose. Çocukları çok sevdiğim için bu mesleği seçtim. 4 senedir bu işi yapıyorum. Daha önce kreşte çalıştım. Yatılı bakıcı olarakta çalışabilirim.',
    ),
    People(
      name: 'Luda',
      surname: 'Gomez (9 sene)',
      age: 33,
      konum: 'İstanbul',
      isFemale: true,
      imageUrl: 'assets/luda.jpg',
      backgroundColor: Color.fromRGBO(180, 237, 191, 1.0),
      aciklama:
          'Merhaba ben Luda Gomez. 11 senedir Türkiyede yaşıyorum. Buraya ilk geldiğim sene 3 sene lüks otellerde kids clupta çocuklara ablalık yaptım. Çocuklara bayılırım. Onlara bakarken aynı zamanda temel ingilizceyi öğretebilirim. Yatılı olarakta çalışabilirim.',
    ),
    People(
      name: 'Mine',
      surname: 'Çınar (5 sene)',
      age: 34,
      konum: 'Sivas',
      isFemale: true,
      imageUrl: 'assets/mine.jpg',
      backgroundColor: Color.fromRGBO(203, 213, 216, 1.0),
      aciklama:
          'Merhaba ben Mine Çınar. 5 senedir bu işi yapıyorum. Daha önce kreşte çalıştım. Kendi kardeşlerimi ben büyüttüm. Benim onları sevdiğim gibi çocuklarında beni seveceklerine eminim. Benden memnun kalacağınıza eminim.',
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
                        /*Container(
                          height: 105.0,
                          child: ListView.builder(
                            padding: EdgeInsets.only(left: 20.0),
                            scrollDirection: Axis.horizontal,
                            itemCount: peopleTypes.length,
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
                                              ChildDetailScreen(
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
