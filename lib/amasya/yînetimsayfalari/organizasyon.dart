import 'package:flutter/material.dart';

class Organizasyon extends StatelessWidget {
  const Organizasyon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.shade900,
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: const Text("ORGANİZASYON ŞEMASI"),
          centerTitle: true,
        ),
      body: Image.asset("images/organizasyon.jpg"),
        );
  }
}
