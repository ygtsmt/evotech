import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class Ucpdf extends StatefulWidget {
  const Ucpdf({Key? key}) : super(key: key);

  @override
  State<Ucpdf> createState() => _UcpdfState();
}

class _UcpdfState extends State<Ucpdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("///////// "),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
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
      ).fromAsset('images/uc.pdf'),
    );
  }
}
