import 'package:flutter_application_3/kataloglar/ucpdf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/kataloglar/birpdf.dart';
import 'package:flutter_application_3/sabitler.dart';

import '../kataloglar/ikipdf.dart';

class Projeler extends StatefulWidget {
  const Projeler({Key? key}) : super(key: key);

  @override
  State<Projeler> createState() => _ProjelerState();
}

class _ProjelerState extends State<Projeler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-KATALOG ",style:Sabitler.appbarTextStyle,),
        centerTitle: true,
        leading: BackButton(
     color: Sabitler.GriCmyk
   ), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Sabitler.GriCmyk,
                  child: TextButton(
                    child:const Text(
                      "EvoTech Elektrikli\nve Mazotlu Katalog 2019",
                      style:  TextStyle(
                           color: Sabitler.TuruncuCmyk,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      side: MaterialStateProperty.all(
                        const   BorderSide(width: 8,  color: Sabitler.TuruncuCmyk,)),
                      minimumSize: MaterialStateProperty.all(
                        const Size(320, 60),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Birpdf()),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                   color: Sabitler.GriCmyk,
                  child: TextButton(
                    child:const Text(
                      "EvoTech Kanal Tipi\nIsıtıcı Katalog 2019",
                      style:  TextStyle(
                         color: Sabitler.TuruncuCmyk,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      side: MaterialStateProperty.all(
                        const BorderSide(width: 8,  color: Sabitler.TuruncuCmyk,)),
                      minimumSize: MaterialStateProperty.all(
                        const Size(320, 60),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Ikipdf()),
                      );
                    },
                  ),
                ),
              ),
            ),
           
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                 color: Sabitler.GriCmyk,
                  child: TextButton(
                    child:const Text(
                      "EvoTech Pano\nKlimaları Katalog 2019",
                      style:  TextStyle(
                          color: Sabitler.TuruncuCmyk,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                     const     BorderSide(width: 8, color: Sabitler.TuruncuCmyk,)),
                      alignment: Alignment.center,
                      minimumSize: MaterialStateProperty.all(
                        const Size(320, 60),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Ucpdf()),
                      );
                    },
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
