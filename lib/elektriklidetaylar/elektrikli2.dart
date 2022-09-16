import 'package:flutter/material.dart';
import 'package:flutter_application_3/sabitler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttericon/entypo_icons.dart';

class Elektrikli2 extends StatelessWidget {
  const Elektrikli2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Sabitler.GriCmyk,
        ),
        title: Text(
          'Evo5 - 5kw Elektrikli Fanlı Isıtıcı',
          style: TextStyle(color: Sabitler.GriCmyk, fontSize: 19),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        Image.asset('images/elektrikli2.jpeg'),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Entypo.dot),
                                Text('EvoTech ailesinin en küçük üyesidir.')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Entypo.dot),
                                Text('Küçük mekanlar için en uygun olanıdır.')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Entypo.dot),
                                Text(
                                    'Cihaz sadece 220 Volt elektrikle çalışır.')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Entypo.dot),
                                Text('Kurulum gerektirmez.')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Entypo.dot),
                                Text(
                                    'Isıtılması istenilen yerde fişe takmanız\nyeterlidir.')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Entypo.dot),
                                Text(
                                    'Eviniz ve ofisiniz için en iyi ısıtma şeklini\nsunar.')
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Entypo.dot),
                                Text(
                                    "30 m2'lik bir alandan 110 m2'ye ısıtma\nimkanı vardır.")
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Entypo.dot),
                                Text('Taşıması çok kolaydır.')
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Model',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':EVO 5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kapasite',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'KW	',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':2,5 - 5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kcal/h	',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':2150 - 4300',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Btu/h',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':8.530 - 17.060',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ses Desibel (dB)	',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':55',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Debi (m3/h)	',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':1000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Voltaj Frekans (V,hz)	',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':220V - 50hz',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ölçüler',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':400x290x415',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ağırlık (kg)	',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              ':12,5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "İLGİLİ RESİMLER",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('images/1q.jpeg'),
                            Image.asset('images/2q.jpeg'),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('images/3q.jpeg'),
                            Image.asset('images/4q.jpeg'),
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
