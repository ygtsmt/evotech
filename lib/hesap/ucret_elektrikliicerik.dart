import 'package:flutter/material.dart';
import 'package:flutter_application_3/hesap/diger_bilgiler.dart';
import 'package:flutter_application_3/hesap/ucret_bilgiler.dart';
import 'package:flutter_application_3/sabitler.dart';
class UcretElektrikliicerik extends StatefulWidget {
  const UcretElektrikliicerik({Key? key}) : super(key: key);
  @override
  State<UcretElektrikliicerik> createState() => _UcretElektrikliicerikState();
}

class _UcretElektrikliicerikState extends State<UcretElektrikliicerik> {
  String isitici = "ISITICI SEÇİLMEDİ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ISITICI TİPİNİ SEÇİNİZ",
          style: Sabitler.appbarTextStyle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Column(
                  children: [
                    Image.asset('images/elektrikli1.jpeg'),
                    const Text(
                      "Evo 3 - 3kw\nElektrikli Fanlı Isıtıcı",
                      style: TextStyle(
                          color: Sabitler.TuruncuCmyk,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onTap: () {
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  UcretBilgiler()),
                                ); 
                },
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  Image.asset('images/elektrikli2.jpeg'),
                  const Text(
                    "Evo5 - 5kw Elektrikli\nFanlı Isıtıcı",
                    style: TextStyle(
                        color: Sabitler.TuruncuCmyk,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onTap: () {
                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  DigerBilgiler()),
                                ); 
              },
            ),
            InkWell(
              child: Column(
                children: [
                  Image.asset('images/elektrikli3.jpeg'),
                  const Text(
                    "Evo10 - 10kw Elektrikli\nFanlı Isıtıcı",
                    style: TextStyle(
                        color: Sabitler.TuruncuCmyk,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onTap: () {   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  DigerBilgiler()),
                                ); },
            ),
          ],
        ),
      ),
    );
  }
}
