import 'package:flutter_application_3/amasya/hizmetlerbutonlari/evlendirmehizmetleri.dart';
import 'package:flutter_application_3/amasya/hizmetlerbutonlari/isyeriruhsati.dart';
import 'package:flutter_application_3/amasya/hizmetlerbutonlari/suaboneligi.dart';
import 'package:flutter_application_3/sabitler.dart';
import 'package:flutter/material.dart';

class Ebelediye extends StatefulWidget {
  const Ebelediye({Key? key}) : super(key: key);

  @override
  State<Ebelediye> createState() => _EbelediyeState();
}

class _EbelediyeState extends State<Ebelediye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        centerTitle: true,
        title:const Text("E-BELEDİYE HIZLI ERİŞİM"),
        backgroundColor:const Color(0xFF0D47A1),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding:const EdgeInsets.all(4),
                child: Container(
                  color: Colors.white,
                  child: TextButton(
                    child: Text(
                      "ÜYE GİRİŞİ",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      minimumSize: MaterialStateProperty.all(
                       const Size(320, 100),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IsYeriRuhsati()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(4),
                child: Container(
                  color: Colors.white,
                  child: TextButton(
                    child: Text(
                      "HIZLI ÖDEME",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      minimumSize: MaterialStateProperty.all(
                       const Size(320, 100),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const EvlendirmeHizmetleri()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(4),
                child: Container(
                  color: Colors.white,
                  child: TextButton(
                    child: Text(
                      "MEVCUT BORÇLAR",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      minimumSize: MaterialStateProperty.all(
                      const  Size(320, 100),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>const SuAbone()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                       const Text(
                          "",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                       const Icon(
                          Icons.arrow_circle_right_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Container(
                      margin: Sabitler.butonMarginleri,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side:const BorderSide(color: Colors.white, width: 2),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Sabitler.TuruncuCmyk),
                          elevation: MaterialStateProperty.all(25),
                          minimumSize: MaterialStateProperty.all(
                            Sabitler.butonBoyutlari,
                          ),
                        ),
                        onPressed: () {
                        /*   launch(
                            ('tel://03582188000'),
                          ); */
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                              const  Text("HEMEN ARA\n"),
                             const   Icon(Icons.call),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
