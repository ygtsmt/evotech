import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

class HalkOtobusleri extends StatefulWidget {
const  HalkOtobusleri({Key? key}) : super(key: key);

  @override
  State<HalkOtobusleri> createState() => _HalkOtobusleriState();
}


class _HalkOtobusleriState extends State<HalkOtobusleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
    
        title:const Text(
          "EVOTECH",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('images/evo.png'),
             const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                  'EvoTech, endüstriyel - sanayi tipi elektrikli / mazotlu fanlı ısıtıcılar ve kanal tipi ısıtıcılar ile ısıtılması gereken tüm alanlarda eşsiz çözüm ortağınız.\nEvoTech pano klimaları ile yüksek kondenzasyon sıcaklıklarında bile muhteşem sonuçlar alabilirsiniz.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            const  Text(
                'Hakkımızda bilmeniz gerekenler...',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Icon(
                    CommunityMaterialIcons.check_bold,
                  ),
                  Text('Sürekli AR-GE.')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Icon(
                    CommunityMaterialIcons.check_bold,
                  ),
                  Text('Kalite kontrol süreçleri.')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Icon(
                    CommunityMaterialIcons.check_bold,
                  ),
                  Text('%100 müşteri memnuniyeti.')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Icon(
                    CommunityMaterialIcons.check_bold,
                  ),
                  Text('Referanslı çözümler.')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Icon(
                    CommunityMaterialIcons.check_bold,
                  ),
                  Text('Maksimum kalite.')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Icon(
                    CommunityMaterialIcons.check_bold,
                  ),
                  Text('Bilgi, birikim, tecrübe.')
                ],
              ),
             const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                  'KULLANIM ALANLARI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow,
                      border: Border.all(width: 4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children:const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'KAFE / RESTORAN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text(
                          'Kafelerin ve restoranların kış bahçelerinde veya iç ortamlarında iç ortam ısısını homojen olarak tüm alana yaymak, yukardan yanmalı ısıtıcılara (radyant, infrared) kıyasen konforlu ısıtma sağlarken hem sizi hem de müşterilerinizi memnun edecektir.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow,
                      border: Border.all(width: 4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: const[
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text(
                          'ATÖLYE / FABRİKA / SPOR SALONLARI',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text(
                          "Geniş veya uzun alanların özel bir ısıtma sistemi olmadan ısıtılmasının imkansız oluşunu ortadan kaldıran EvoTech ısıtıcıları alanınızın büyüklüğüne göre seçebilirsiniz.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow,
                      border: Border.all(width: 4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children:const[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'İNŞAAT / ŞANTİYE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text(
                          "Özellikle beton kurutma, epoksi kurutma, alçı kurutma ve sıva kurutma işlerinde mazotlu EvoTech cihazların performansına hayran kalacaksınız. Kendi halinde kurutma işlemine bıraktığınızda günler sürerken, EvoTech ısı cihazları ile saatler içerisinde alanlarınızı kurutmanın mümkün olduğunu göreceksiniz.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow,
                      border: Border.all(width: 4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: const[
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text(
                          'SERA/ ÇADIR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text(
                          "EvoTech ısı cihazları tam otamasyonlu şekilde çalışabilecek yapıda dizayn edilmişlerdir. Halihazırda üzerinde bulunan termostatlarını kullanarak ya da talebiniz halinde otomasyon sisteminize entegresinin sağlanması neticesinde %100’e yakın verimli yanma sağlayarak kazancınızı artıracak İş’te sizi ısıtacaktır.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow,
                      border: Border.all(width: 4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children:const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'EV / OFİS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text(
                          "Evinizde veya iş yerinizde, yani küçük alanlarda da kullanabileceğiniz, mobil, kurulum gerektirmeyen yapısı ile EvoTech ısıtıcılar baş köşede yerini alacaklardır.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow,
                      border: Border.all(width: 4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(children: const[
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text(
                        'KURUTMA ALANLARI',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text(
                        "Köme, pestil, endüstriyel kurutma vs. gibi amaçlarda size özel en etkili çözümü sunan EvoTech ısıtıcılar uzun ömürleri yüksek kapasiteleri ile istenilen işi istenilen zamana eriştirmenize yardımcı olacaktır.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
