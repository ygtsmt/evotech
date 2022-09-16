import 'package:flutter_application_3/elektriklidetaylar/elektrikli1.dart';
import 'package:flutter_application_3/elektriklidetaylar/elektrikli2.dart';
import 'package:flutter_application_3/elektriklidetaylar/elektrikli3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/sabitler.dart';

class Guncel extends StatefulWidget {
  const Guncel({Key? key}) : super(key: key);

  @override
  State<Guncel> createState() => _GuncelState();
}

class _GuncelState extends State<Guncel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Sabitler.TuruncuCmyk,
        title: const Text("ELEKTRİKLİ ISITICILAR",style:Sabitler.appbarTextStyle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 10,color: Sabitler.isiticiBorderRengi)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Evo 3 - 3kw Elektrikli Fanlı Isıtıcı",
                              style: const TextStyle(
                                  color: Sabitler.TuruncuCmyk,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Image.asset('images/elektrikli1.jpeg'),
                            Text(
                              '1650₺ + KDV\nEvoTech Evo3 modeli 3kw gücünde 220 volt elektrik ile çalışan fanlı ısıtıcı ev, ofis vs. gibi küçük alanlarda hızlı ısınma için idealdir.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22, color: Sabitler.TuruncuCmyk),
                            ),
                            TextButton.icon(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Sabitler.GriCmyk),
                                  side: MaterialStateProperty.all(
                                    BorderSide(
                                        width: 5, color: Sabitler.GriCmyk),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Elektrikli1()));
                                },
                                icon: Icon(
                                  Icons.touch_app,
                                  color: Sabitler.TuruncuCmyk,
                                ),
                                label: Text(
                                  'Detaylar için dokunun.',
                                  style: TextStyle(color: Sabitler.TuruncuCmyk),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Evo5 - 5kw Elektrikli Fanlı Isıtıcı",
                              style: const TextStyle(
                                   color: Sabitler.TuruncuCmyk,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Image.asset('images/elektrikli2.jpeg'),
                            Text(
                              '3000₺ + KDV\nEvoTech Evo5 modeli 5kw gücünde 220 volt elektrik ile çalışan fanlı ısıtıcı ev, ofis vs. gibi küçük alanlarda mobil ısıtma çözümü için idealdir.',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 22, color: Sabitler.TuruncuCmyk),
                            ),
                            TextButton.icon(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Sabitler.GriCmyk),
                                  side: MaterialStateProperty.all(
                                    BorderSide(width: 5, color: Sabitler.GriCmyk),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Elektrikli2()));
                                },
                                icon: Icon(
                                  Icons.touch_app,
                                  color: Sabitler.TuruncuCmyk,
                                ),
                                label: Text(
                                  'Detaylar için dokunun.',
                                  style: TextStyle(color: Sabitler.TuruncuCmyk),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Evo10- 10 kw Elektrikli Fanlı Isıtıcı",
                              style: const TextStyle(
                                  color: Sabitler.TuruncuCmyk,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Image.asset('images/elektrikli3.jpeg'),
                            Text(
                              '4.200₺ + KDV\nEvoTech Evo10 modeli 10 kw gücünde 380v elektrik ile çalışabilen, kurulum gerektirmeyen termostat ayarı ile ekonomik ısıtma sağlar',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 22, color: Sabitler.TuruncuCmyk),
                            ),
                            TextButton.icon(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Sabitler.GriCmyk),
                                  side: MaterialStateProperty.all(
                                    BorderSide(width: 5, color: Sabitler.GriCmyk),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Elektrikli3()));
                                },
                                icon: Icon(
                                  Icons.touch_app,
                                  color: Sabitler.TuruncuCmyk,
                                ),
                                label: Text(
                                  'Detaylar için dokunun.',
                                  style: TextStyle(color: Sabitler.TuruncuCmyk),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
