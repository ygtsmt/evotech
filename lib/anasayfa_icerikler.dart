import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/butonsayfalari/referanslar.dart';
import 'package:flutter_application_3/butonsayfalari/elektrikli_isiticilar.dart';
import 'package:flutter_application_3/evotech.dart';
import 'package:flutter_application_3/hesap/elektrikli_isiticilar.dart';
import 'package:flutter_application_3/hesap/ucret_bilgiler.dart';
import 'package:flutter_application_3/hesap/ucret_homapage.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'butonsayfalari/kataloglar.dart';
import 'sabitler.dart';
import 'butonsayfalari/kurumsal.dart';
import 'package:community_material_icon/community_material_icon.dart';

class GecirSayfasi extends StatefulWidget {
  const GecirSayfasi({Key? key}) : super(key: key);

  @override
  State<GecirSayfasi> createState() => _GecirSayfasiState();
}

class _GecirSayfasiState extends State<GecirSayfasi> {
  int _currentPage = 0;
  Timer? _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 5),
        curve: Curves.fastOutSlowIn, //geçiş anımasyonu
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //scaffold kaldırdım
        children: [
          appbaraltiresim(),
          resimaltislogan(),
          butonlar(),
        ],
      ),
    );
  }

  butonlar() {
    return Expanded(
      flex: 30,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: Sabitler.butonMarginleri,
                        child: ElevatedButton(
                          style: Sabitler.butonstil(),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HalkOtobusleri()),
                            );
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 0, 0),
                                      child: Image.asset(
                                          'images/evologobuton.png'),
                                    )),
                                const Padding(padding: EdgeInsets.all(2)),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    "EVOTECH",
                                    style: TextStyle(color: Sabitler.GriCmyk),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                    child: Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: Sabitler.butonstil(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MehmetSari()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/evvvoarka.png',
                            ),
                         
                            Text(
                              "KURUMSAL",
                              style: TextStyle(color: Sabitler.GriCmyk),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                    child: Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: Sabitler.butonstil(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BaskanaMesaj()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                               Icons.people,
                              size: 29,
                              color: Sabitler.GriCmyk,
                            ),
                            const Padding(padding: EdgeInsets.all(2)),
                            Text(
                              "REFERANS",
                              style: TextStyle(
                                color: Sabitler.GriCmyk,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(2)),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(2)),
            Expanded(
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                    child: Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: Sabitler.butonstil(),
                        onPressed: () {
                          //   launch( "https://amasya.bel.tr/uploads/projelerimiz/proje.pdf");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Projeler()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.newspaper, color: Sabitler.GriCmyk),
                            const Padding(padding: EdgeInsets.all(2)),
                            Text(
                              "KATALOG",
                              style: TextStyle(
                                color: Sabitler.GriCmyk,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                    child: Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: Sabitler.butonstil(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Guncel()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 10,
                                child: Image.asset(
                                  'images/buttonevo.png',
                                )),
                            Text(
                              "ELEKTRİKLİ\nISITICILAR",
                              style: TextStyle(
                                color: Sabitler.GriCmyk,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(1)),
                  Expanded(
                    child: Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: Sabitler.butonstil(),
                        onPressed: () {
                        /*   Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Yonetim()),
                          ); */
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/mazotlubutton.png',
                            )),
                            Text(
                              "MAZOTLU\nISITICILAR",
                              style: TextStyle(
                                color: Sabitler.GriCmyk,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(2)),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(2)),
            Expanded(
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                    child: Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: Sabitler.butonstil(),
                        onPressed: () {
                        /*   Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MeclisKararlari()),
                          ); */
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/panobutton.png',
                            )),
                            Text(
                              "PANO\nKLİMALARI",
                              style: TextStyle(
                                color: Sabitler.GriCmyk,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                    child: Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: Sabitler.butonstil(),
                        onPressed: () {
                          /* 
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalFiyatlari()),
                          ); */
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/kanalbutton.png',
                            )),
                            Text(
                              "KANAL TİPİ\nISITICILAR",
                              style: TextStyle(
                                color: Sabitler.GriCmyk,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(2)),
                  Expanded(
                    child: Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: Sabitler.butonstil(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UcretBilgiler()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.turkishLiraSign,
                              size: 29,
                              color: Sabitler.GriCmyk,
                            ),
                            Padding(padding: EdgeInsets.all(2)),
                            Text(
                              "HESAPLA",
                              style: TextStyle(
                                color: Sabitler.GriCmyk,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(2)),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(2)),
          ],
        ),
      ),
    );
  }

  resimaltislogan() {
    return Expanded(
      flex: 4,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "EvoTech İŞ'TE SİZİ ISITAN TEKNOLOJİ!",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Sabitler.GriCmyk),
        ),
      ),
    );
  }

  appbaraltiresim() {
    return Expanded(
      flex: 36,
      child: SizedBox(
        height: 200,
        child: FutureBuilder(
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return anaPagem();
              case ConnectionState.waiting:
                return const Text('Bekle...');
              case ConnectionState.done:
                if (snapshot.hasData) {
                  if (snapshot.data != null) {
                    return PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          child: anaPagem(),
                        );
                      },
                    );
                  }
                }
                break;
              case ConnectionState.active:
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  PageView anaPagem() {
    return PageView(
      controller: _pageController,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/1_cleanup.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/2_cleanup.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        /* s */

        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/3_cleanup.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/4_cleanup.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
