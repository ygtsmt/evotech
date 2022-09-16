import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
class Ikipdf extends StatefulWidget {
 const Ikipdf({Key? key}) : super(key: key);

  @override
  State<Ikipdf> createState() => _IkipdfState();
}

class _IkipdfState extends State<Ikipdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("////////// "),
        centerTitle: true,
        backgroundColor:Color.fromARGB(255, 0, 0, 0),
      ),
      body: PDF(
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: false,
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
      ).fromAsset('images/iki.pdf'),
    );
  }
}
 