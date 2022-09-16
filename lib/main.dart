import 'package:flutter_application_3/anasayfa_sabitler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/sabitler.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EVOTECH",
      theme: ThemeData(
        
        appBarTheme: const AppBarTheme(
          
          centerTitle: true,
          color: Sabitler.TuruncuCmyk,
        ),
        primaryColor: Sabitler.GriCmyk,
        iconTheme: const IconThemeData(size: 25, color:Sabitler.GriCmyk),
      ),
      color: Sabitler.GriCmyk,
      home: const YeniAnaSayfa(),
    );
  }
}
