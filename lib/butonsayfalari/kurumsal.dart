import 'package:flutter/material.dart';
import 'package:flutter_application_3/sabitler.dart';

class MehmetSari extends StatefulWidget {
  const MehmetSari({Key? key}) : super(key: key);

  @override
  State<MehmetSari> createState() => _MehmetSariState();
}

class _MehmetSariState extends State<MehmetSari> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Sabitler.GriCmyk),
        title: const Text(
          "KURUMSAL",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Sabitler.GriCmyk),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/makina.jpeg',fit: BoxFit.fill,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Logosundaki dört halkayı bilim ,teknoloji , mühendislik ve üretimde alan veönceliği daima çevre, kalite ve inovasyona veren EvoTech’in Türkiye’de bulunan merkezinde önemli üretim tesisi ve yenilikçi ve konusunda her biri uzman Ar-Ge ekibi ile önemli tasarım çalışmaları mevcuttur.\n\nEndüstriyel hava ısıtma cihazları üretiminde yaptığı Ar-Ge çalışmaları ile yenilikçi sonuçlar üreten EvoTech ürünlerin operasyonel ömürleri boyunca enerjinin maksimum etkinlikte kullanılmasını sağlamayı amaç edinmiştir.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Sabitler.TuruncuCmyk),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Üretimden satış sonrası servise kadar, EvoTech ürün sağlama zincirinin tüm aşamalarında bir bütündür.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Sabitler.GriCmyk),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Üretim esnasında bütün üniteler, kullanım sahalarındaki cihaz arızalarına karşı ilk savunma hattı olan uzun bir seri teste tabi tutulur.Cihazların CE, OHSAS 18001:2007 ve ISO 9001:2008 ürün test gereklerine uyumları ise geniş bir alan içerisinde performans kontrolü sağlanmaktadır.\n\nEvoTech ayrıca sahibi olduğu ISO 14001:2009 sertifikası ile doğayı çevreci bir yaklaşım ile korumaktadır.\n\nEvoTech markası inovasyona dayanan temeli ile küresel rakiplerinden daha önde olmasını isminde yer alan nüansa borçludur.\n\nSürekli gelişimi temel alan ve bu çerçevede Ar-Ge çalışmaları ile ürün yelpazesini geliştiren EvoTech firmalarınızın projelerinde kurumsal çözüm ortağı olmaya devam edecektir..',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Sabitler.TuruncuCmyk),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'BELGELERİMİZ',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 36),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge1.jpeg',fit: BoxFit.fill,),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge2.jpeg',fit: BoxFit.fill,),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge3.jpeg'),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge4.jpeg'),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge5.jpeg'),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge6.jpeg'),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge7.png'),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge8.png'),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge9.png'),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/belge10.png'),
                    )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
