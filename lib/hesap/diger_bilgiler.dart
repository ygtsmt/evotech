import 'package:flutter/material.dart';
import 'package:flutter_application_3/sabitler.dart';

class DigerBilgiler extends StatefulWidget {
  DigerBilgiler({Key? key}) : super(key: key);

  @override
  State<DigerBilgiler> createState() => _DigerBilgilerState();
}

class _DigerBilgilerState extends State<DigerBilgiler> {
  @override
  String dropdownValue = "ADANA";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DİĞER BİLGİLER",
          style: Sabitler.appbarTextStyle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ŞEHİR SEÇİNİZ",style: TextStyle(color: Sabitler.GriCmyk),),
          
          ],
        ),

      ],
    )
          ],
        ),
      ),
    );
  }

 
}


