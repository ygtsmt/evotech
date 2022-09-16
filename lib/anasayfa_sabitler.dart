import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_application_3/amasya/muzelerimiz.dart';
import 'package:flutter_application_3/anasayfa_icerikler.dart';
import 'package:flutter_application_3/iletisim.dart';
import 'package:flutter/material.dart';
import 'sabitler.dart';

class YeniAnaSayfa extends StatefulWidget {
  const YeniAnaSayfa({Key? key}) : super(key: key);

  @override
  State<YeniAnaSayfa> createState() => _YeniAnaSayfaState();
}

class _YeniAnaSayfaState extends State<YeniAnaSayfa> {
  int _selectedIndex = 0;

  static final List _widgetOptions = [
   GecirSayfasi(),
    Iletisim(),
    Muzelerimiz()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(size: 25, color:Sabitler.GriCmyk),
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Expanded(flex: 3,
                  child: const Text(
                    "EvoTech-312 Makina ",textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Sabitler.GriCmyk),
                  ),
                ),
                Expanded(flex: 1,
                  child: Image.asset(
                    'images/evologo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          /* Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Expanded(flex: 3,
                  child: const Text(
                    "EvoTech-312 Makina ",textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Sabitler.GriCmyk),
                  ),
                ),
                Expanded(flex: 1,
                  child: Image.asset(
                    'images/evologo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ), */
          
        ),
        drawer: Drawer( 
            backgroundColor: Sabitler.TuruncuCmyk,/*
            child: ListView(children: <Widget>[
              const DrawerHeader(
                child: Align(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/evologo.png"),
                      fit: BoxFit.fill),
                ),
              ),
              Container(width: 100,color: Colors.blue.shade900,
                child: Text(
                  "HIZLI ERİŞİM",
                  textAlign: TextAlign.center,
                  style: TextStyle( backgroundColor: Colors.blue.shade900,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.public_rounded,
                  color: Colors.red.shade900,
                ),
                title: Text(
                  'WEB SİTEMİZ',
                  style: TextStyle(
                      color: Colors.red.shade900, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.insert_link_outlined,
                  color: Colors.red.shade900,
                ),
                onTap: () {
               //   launch("https://amasya.bel.tr/");
                },
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue.shade900, width: 3),
                  //  borderRadius: BorderRadius.circular(5),
                ),
              ),
             
              /*   ListTile(
                leading: Icon(Icons.price_change, color: Colors.red.shade900),
                title: Text(
                  'HAL FİYATLARI',
                  style: TextStyle(
                      color: Colors.red.shade900, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.touch_app, color: Colors.red.shade900),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HalFiyatlari()),
                  );
                },
              ), */
              
            ]) */),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Sabitler.bottomnavigatorbarbutonrengicolor,
          selectedItemColor: Sabitler.anasayfabutoniconvetext,
          selectedFontSize: 15,
          unselectedItemColor: Sabitler.anasayfabutoniconvetext,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                ),
              label: 'ANA SAYFA',
            ),
            
            BottomNavigationBarItem(
                icon: Icon(Icons.info,
                   ),
                label: "İLETİŞİM"),
                BottomNavigationBarItem(
                icon: Icon(CommunityMaterialIcons.blogger
                   ),
                label: "BLOG"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
