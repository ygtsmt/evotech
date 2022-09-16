import 'package:flutter/material.dart';
import 'package:flutter_application_3/sabitler.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Sabitler.TuruncuCmyk,
      child: Column(
        children: [
          Expanded(flex: 3,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "İLETİŞİM BİLGİLERİ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25),
                ),
              ),
            ),
          ),
          Expanded(flex: 3,
            child: Container(
              color: const Color.fromARGB(255, 237, 231, 231),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('EvoTech Merkez Fabrika - 312 Makina\nADRES\nOstim Osb Mahallesi 1172.Cadde No:10 Yenimahalle Ankara',textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ),
          Expanded(flex: 3,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Text(
                      "Haritalarda\nkonumumuzu görmek için\ngörsele dokunun.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                      /*   launch(
                            "https://www.google.com/maps?ll=39.967228,32.748468&z=17&t=m&hl=tr-TR&gl=TR&mapclient=embed&cid=7535856001496919900");
                       */},
                      child: Image.asset(
                        'images/mapsicon.png',
                        fit: BoxFit.cover, // Fixes border issues
                        width: 110.0,
                        height: 110.0,
                      ),
                    ),
                  ),
                  //iletişim form
              
                ],
              ),
            ),
          ),
           Expanded(flex: 7,
             child: Container(
              color: const Color.fromARGB(255, 237, 231, 231),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Telefon: +90 312 387 3 312\n\nE-posta: info@312makina.com.tr\n\nCep Telefon: +90 532 687 0 312\n\nFaks: +90 312 387 2 312',textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
                       ),
           ),
          Expanded(flex: 1,
            child: Center(
              child: const Text(
                "SOSYAL MEDYA HESAPLARIMIZ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Expanded(flex: 3,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
                      color: Colors.transparent,
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Image.asset('images/twitter.png'),
                        iconSize: 50,
                        onPressed: () {
                        //  launch("https://twitter.com/CorpEvotech");
                        },
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Image.asset('images/youtube.png'),
                        iconSize: 50,
                        onPressed: () {
                      //    launch(       "https://www.youtube.com/channel/UC9swnGJWedtNBv9g19IXkVQ");
                        },
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Image.asset('images/linkedin.png'),
                        iconSize: 50,
                        onPressed: () {
                //          launch( "https://www.linkedin.com/company/evotech-ortam-isiticilari-312-makina-co/");
                        },
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Image.asset('images/facebook.png'),
                        iconSize: 50,
                        onPressed: () {
                //          launch("https://www.facebook.com/evoisi/");
                        },
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Image.asset('images/instagram.png'),
                        iconSize: 50,
                        onPressed: () {
                       //   launch("https://www.instagram.com/evotech.corp/");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
