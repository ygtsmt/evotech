import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';
import 'package:google_fonts/google_fonts.dart';
class Sabitler {

  static final Color anasayfabutoniconvetext = CmykColor(20, 10, 5, 35);
  static final Color butonrengicolor = CmykColor(0, 30, 92, 0);
  static const Color bottomnavigatorbarbutonrengicolor =
      CmykColor(0, 30, 92, 0);
  static const Color TuruncuCmyk = CmykColor(0, 30, 92, 0);
  static const Color GriCmyk = CmykColor(20, 10, 5, 35);
  static const butonBoyutlari = Size(110, 80);
  static const butonMarginleri = EdgeInsets.all(0);
  static const Color isiticiBorderRengi = Colors.black;
  static const TextStyle appbarTextStyle =
      TextStyle(color: GriCmyk, fontWeight: FontWeight.bold);

  static ButtonStyle butonstil() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(color: Color.fromARGB(255, 255, 153, 0), width: 2))),
      backgroundColor: MaterialStateProperty.all(Sabitler.TuruncuCmyk),
      minimumSize: MaterialStateProperty.all(
        Sabitler.butonBoyutlari,
      ),
    );
  }

  /* anasayfabutonlari(
    @required context,
    @required String sayfayolu,
    @required IconData ikon,
    @required String butontexti,
  ) {
    return Expanded(
      child: Container(
        margin: Sabitler.butonMarginleri,
        child: ElevatedButton(
          style: Sabitler.butonstil(),
          onPressed: () {
            Navigator.pushNamed(context, "/sayfayolu");
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(ikon),
              const Padding(padding: EdgeInsets.all(3)),
              Text(
                butontexti,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  } */

  static projeresmikoy({@required String? resimyolu}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade900, width: 10)),
          child: Center(
            child: Image.asset(
              resimyolu.toString(),
              fit: BoxFit.fill,
              width: 400,
            ),
          )),
    );
  }

  static mecliskararikoy(
      {@required String? baslik,
      @required String? baslik1,
      String? baslik2,
      String? baslik3}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        color: Colors.white,
        child: ExpansionTile(
          children: [
            ListTile(
              title: Text(
                baslik1.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red.shade900, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.touch_app, color: Colors.red.shade900),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                baslik2.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red.shade900, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.touch_app, color: Colors.red.shade900),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                baslik3.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red.shade900, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.touch_app, color: Colors.red.shade900),
              onTap: () {},
            ),
          ],
          title: Text(
            baslik.toString(),
            style: TextStyle(
                color: Colors.red.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  static stratejikkoy({@required String? baslik}) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              color: Colors.white,
              child: TextButton.icon(
                style: ButtonStyle(
                  alignment: Alignment.center,
                  minimumSize: MaterialStateProperty.all(
                    const Size(340, 60),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.document_scanner_outlined,
                    color: Colors.red.shade900, size: 25),
                label: Text(
                  baslik.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red.shade900),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  static aydinlatmametnikvkkkoy({@required String? baslik}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        color: Colors.white,
        child: TextButton.icon(
          style: ButtonStyle(
            alignment: Alignment.center,
            minimumSize: MaterialStateProperty.all(
              const Size(340, 60),
            ),
          ),
          onPressed: () {},
          icon: Icon(Icons.document_scanner_outlined,
              color: Colors.red.shade900, size: 25),
          label: Text(
            baslik.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red.shade900),
          ),
        ),
      ),
    );
  }

  static hizmetlerbutonukoy({@required String? hizmetadi}) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        color: Colors.white,
        child: TextButton(
            child: Text(
              hizmetadi.toString(),
              style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            style: ButtonStyle(
              alignment: Alignment.center,
              minimumSize: MaterialStateProperty.all(
                const Size(320, 60),
              ),
            ),
            onPressed: () {}),
      ),
    );
  }

  static guncelbutonkoy(
      {@required String? hizmetadi, @required sayfayolu, @required conyolu}) {
    return Container(
      color: Colors.blue.shade900,
      child: TextButton(
          child: Text(
            hizmetadi.toString(),
            style: const TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          style: ButtonStyle(
            alignment: Alignment.center,
            minimumSize: MaterialStateProperty.all(
              const Size(320, 60),
            ),
          ),
          onPressed: () {}),
    );
  }

  static meclisuyesikoy({
    @required String? uyeresimyolu1,
    @required String? isi1,
    @required String? ismi1,
  }) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Image.asset(
            uyeresimyolu1.toString(),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              isi1.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Text(ismi1.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  static baskanamesajtextfieldkoy(controllerdegeri, TextInputAction? textbutonu,
      TextInputType klavyetipi, String labeltexti, int maksimumsatir) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        /*   onChanged: (String deger) {
                print(deger);
              }, yazılan herseyı degerın ıcıne atar */
        keyboardType: klavyetipi,
        textInputAction: textbutonu,
        decoration: InputDecoration(
          labelText: labeltexti,
          labelStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 5.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 5.0),
          ),
          alignLabelWithHint: true,
        ),
        textAlign: TextAlign.center,
        controller: controllerdegeri,
        maxLines: maksimumsatir,
      ),
    );
  }

  static urunKoy({@required String? baslik, required sayfanavigator}) {
    return Padding(
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
                          // color: ,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset('images/elektrikli2.jpeg'),
                    Text(
                      '3000₺ + KDV\nEvoTech Evo5 modeli 5kw gücünde 220 volt elektrik ile çalışan fanlı ısıtıcı ev, ofis vs. gibi küçük alanlarda mobil ısıtma çözümü için idealdir.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          side: MaterialStateProperty.all(
                            BorderSide(width: 5, color: Colors.black),
                          ),
                        ),
                        onPressed: () {
                          sayfanavigator;
                        },
                        icon: Icon(
                          Icons.touch_app,
                          color: Colors.yellow,
                        ),
                        label: Text(
                          'Detaylar için dokunun.',
                          style: TextStyle(color: Colors.yellow),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ayarlar {
  static const List<String> ayarlarlo = [
    "0",
    "1",
    "2",
    "3",
  ];
}

class Turkiye {
  static const List<String> locations = [
    "ADANA",
    "ADIYAMAN",
    "AFYONKARAHİSAR",
    "AĞRI",
    "AKSARAY",
    "AMASYA",
    "ANKARA",
    "ANTALYA",
    "ARDAHAN",
    "ARTVİN",
    "AYDIN",
    "BALIKESİR",
    "BARTIN",
    "BATMAN",
    "BAYBURT",
    "BİLECİK",
    "BİNGÖL",
    "BİTLİS",
    "BOLU",
    "BURDUR",
    "BURSA",
    "ÇANAKKALE",
    "ÇANKIRI",
    "ÇORUM",
    "DENİZLİ",
    "DİYARBAKIR",
    "DÜZCE",
    "EDİRNE",
    "ELAZIĞ",
    "ERZİNCAN",
    "ERZURUM",
    "ESKİŞEHİR",
    "GAZİANTEP",
    "GİRESUN",
    "GÜMÜŞHANE",
    "HAKKARİ",
    "HATAY",
    "IĞDIR",
    "ISPARTA",
    "İSTANBUL",
    "İZMİR",
    "KAHRAMANMARAŞ",
    "KARABÜK",
    "KARAMAN",
    "KARS",
    "KASTAMONU",
    "KAYSERİ",
    "KİLİS",
    "KIRIKKALE",
    "KIRKLARELİ",
    "KIRŞEHİR",
    "KOCAELİ",
    "KONYA",
    "KÜTAHYA",
    "MALATYA",
    "MANİSA",
    "MARDİN",
    "MERSİN",
    "MUĞLA",
    "MUŞ",
    "NEVŞEHİR",
    "NİĞDE",
    "ORDU",
    "OSMANİYE",
    "RİZE",
    "SAKARYA",
    "SAMSUN",
    "ŞANLIURFA",
    "SİİRT",
    "SİNOP",
    "SİVAS",
    "ŞIRNAK",
    "TEKİRDAĞ",
    "TOKAT",
    "TRABZON",
    "TUNCELİ",
    "UŞAK",
    "VAN",
    "YALOVA",
    "YOZGAT",
    "ZONGULDAK"
  ];
}
