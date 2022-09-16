import 'package:flutter/material.dart';
import 'package:flutter_application_3/sabitler.dart';

class UcretHesaplama extends StatefulWidget {
  UcretHesaplama({Key? key}) : super(key: key);

  @override
  State<UcretHesaplama> createState() => _UcretHesaplamaState();
}

class _UcretHesaplamaState extends State<UcretHesaplama> {
  bool checkBool = false;
  bool checkBoo2 = false;
  bool checkBoo3 = false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Sabitler.GriCmyk,
        ),
        title: const Text(
          'ÜCRET HESAPLAMA',
          style: Sabitler.appbarTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '1.CİHAZINIZIN MODELİNİ SEÇİNİZ',
                  style: TextStyle(
                      color: Sabitler.GriCmyk,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Evo3_3kwelektriklifanliisitici(),
            Evo5_5kwElektrikliFanliisitici(),
            evo10_10kwElketrikFanliIsitici()
          ],
        ),
      ),
    );
  }

  Padding evo10_10kwElketrikFanliIsitici() {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Sabitler.TuruncuCmyk),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            Transform.scale(
              scale: 1.6,
              child: Checkbox(
                activeColor: Sabitler.TuruncuCmyk,
                checkColor: Sabitler.TuruncuCmyk,
                //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                fillColor: MaterialStateProperty.all(Sabitler.GriCmyk),
                value: checkBoo3,
                onChanged: (value) {
                  setState(() {
                    checkBoo3 = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding Evo5_5kwElektrikliFanliisitici() {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Sabitler.TuruncuCmyk),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            Transform.scale(
              scale: 1.6,
              child: Checkbox(
                activeColor: Sabitler.TuruncuCmyk,
                checkColor: Sabitler.TuruncuCmyk,
                //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                fillColor: MaterialStateProperty.all(Sabitler.GriCmyk),
                value: checkBoo2,
                onChanged: (value) {
                  setState(() {
                    checkBoo2 = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding Evo3_3kwelektriklifanliisitici() {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Sabitler.TuruncuCmyk),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            Transform.scale(
              scale: 1.6,
              child: Checkbox(
                activeColor: Sabitler.TuruncuCmyk,
                checkColor: Sabitler.TuruncuCmyk,
                //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                fillColor: MaterialStateProperty.all(Sabitler.GriCmyk),
                value: checkBool,
                onChanged: (value) {
                  setState(() {
                    checkBool = value!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
