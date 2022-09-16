import 'package:flutter/material.dart';
import 'package:flutter_application_3/sabitler.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

class BaskanaMesaj extends StatefulWidget {
  const BaskanaMesaj({Key? key}) : super(key: key);

  @override
  State<BaskanaMesaj> createState() => _BaskanaMesajState();
}

class _BaskanaMesajState extends State<BaskanaMesaj> {
  @override
  Widget build(BuildContext context) {
    TextEditingController adSoyad = TextEditingController();
    TextEditingController epostaAdresi = TextEditingController();
    TextEditingController telefonNumararasi = TextEditingController();
    TextEditingController konu = TextEditingController();
    TextEditingController mesajiniz = TextEditingController();

    @override
    void dispose() {
      adSoyad.dispose();
      epostaAdresi.dispose();
      telefonNumararasi.dispose();
      konu.dispose();
      mesajiniz.dispose();
      super.dispose();
    }

    @override
    void initState() {
      super.initState();

      adSoyad.text = 'Complete the story from here...';
      epostaAdresi.text = 'Complete the story from here...';
      telefonNumararasi.text = 'Complete the story from here...';
      konu.text = 'Complete the story from here...';
      mesajiniz.text = 'mesajıız text ';
    }

    return Center(
      child: Scaffold(backgroundColor: Sabitler.GriCmyk,
          appBar: AppBar(
            title: const Text(
              "REFERANSLARIMIZ",
              style: Sabitler.appbarTextStyle,
            ),
            centerTitle: true,
            backgroundColor: Sabitler.TuruncuCmyk,
            leading: BackButton(
              color: Sabitler.GriCmyk,
            ),
            //backgroundColor: Color.fromRGBO(133, 149, 157, 15)
          ),
          body: Center(
            child: Image.asset("images/referanslar.jpeg"),
          )),
    );
  }
}
