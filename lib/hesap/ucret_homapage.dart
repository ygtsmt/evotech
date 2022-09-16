import 'package:flutter/material.dart';
import 'package:flutter_application_3/hesap/ucret_elektrikliicerik.dart';
import 'package:flutter_application_3/sabitler.dart';
class UcretHomaPage extends StatefulWidget {
  UcretHomaPage({Key? key}) : super(key: key);

  @override
  State<UcretHomaPage> createState() => _UcretHomaPageState();
}

class _UcretHomaPageState extends State<UcretHomaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Sabitler.GriCmyk,
        ),
        title: Text(
          '1-CİHAZINIZIN TÜRÜNÜ SEÇİNİZ',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Sabitler.GriCmyk),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(children: [Expanded(
                      child: InkWell(
                        child: Image.asset("images/elekucret.jpg"),
                        onTap: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UcretElektrikliicerik()),
                                ); 
                        },
                      ),
                    ),Expanded(
                      child: InkWell(
                        child: Image.asset("images/mazotluucret.jpg"),
                        onTap: () {
                          /*   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Muzelerimiz()),
                                ); */
                        },
                      ),
                    ),],),
            ),
            Expanded(
              child: Row(children: [Expanded(
                      child: InkWell(
                        child: Image.asset("images/panoucret.jpg"),
                        onTap: () {
                          /*   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Muzelerimiz()),
                                ); */
                        },
                      ),
                    ),Expanded(
                      child: InkWell(
                        child: Image.asset("images/kanaltipiucret.jpg"),
                        onTap: () {
                          /*   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Muzelerimiz()),
                                ); */
                        },
                      ),
                    ),],),
            )
           

            /* 
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Expanded(
                          child: Image.asset(
                            'images/elekucret.jpg',fit: BoxFit.fitHeight,
                           // height: 20,
                          ),
                        ),
                        label: Text(
                          "",
                        )),
                  ),
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Expanded(
                          child: Image.asset(
                            'images/elekucret.jpg',
                                              //    height: 20,
                          ),
                        ),
                        label: Text(
                          "",
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Expanded(
                          child: Image.asset(
                            'images/elekucret.jpg',
                                              //    height: 20,
                          ),
                        ),
                        label: Text(
                          "",
                        )),
                  ),
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Expanded(
                          child: Image.asset(
                            'images/elekucret.jpg',
                          //  height: 20,
                          ),
                        ),
                        label: Text(
                          "",
                        )),
                  ),
                ],
              ),
            ), */
          ],
        ),
        ),
        );
  }
}
