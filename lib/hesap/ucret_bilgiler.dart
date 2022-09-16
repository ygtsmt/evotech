import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/hesap/ucret_homapage.dart';
import 'package:flutter_application_3/sabitler.dart';
import 'package:knob_widget/knob_widget.dart';
class UcretBilgiler extends StatefulWidget {
  UcretBilgiler({Key? key}) : super(key: key);

  @override
  State<UcretBilgiler> createState() => _UcretBilgilerState();
}

class _UcretBilgilerState extends State<UcretBilgiler> {
  @override
  String formatTime(int milliseconds) {
    var secs = milliseconds ~/ 1000;
    var hours = (secs ~/ 3600).toString().padLeft(2, '0');
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";
  }

  num toplamdakika(num milliseconds) {
    double secs = (milliseconds ~/ 1000).toDouble();
    double hours = (secs ~/ 3600).toDouble();
    double minutes = ((secs % 3600) ~/ 60).toDouble();
    double seconds = (secs % 60);
    return hours * 5 + minutes * 0.25 + seconds * 0.004166;
  }

  void handleStartStop() {
    if (_stopwatch!.isRunning) {
      _stopwatch!.stop();
    } else {
      _stopwatch!.start();
    }
    setState(() {}); // re-render the page
  }

  Stopwatch? _stopwatch;

  String dropdownValue = "ADANA";

  String dropdownValueayar = "0";
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _knobValue = _minimum;
    _controller = KnobController(
      initial: _knobValue,
      minimum: _minimum,
      maximum: _maximum,
      startAngle: 0,
      endAngle: 180,
    );
    _controller.addOnValueChangedListener(valueChangedListener);
    _stopwatch = Stopwatch();
    // re-render every 30ms
    _timer = Timer.periodic(
      Duration(milliseconds: 30),
      (timer) {
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
    _controller.removeOnValueChangedListener(valueChangedListener);
  }

  final double _minimum = 10;
  final double _maximum = 40;

  late KnobController _controller;
  late double _knobValue;

  void valueChangedListener(double value) {
    if (mounted) {
      setState(() {
        _knobValue = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("EVOTECH ÜCRET HESAPLA"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      side: MaterialStateProperty.all(
                          BorderSide(width: 3, color: Sabitler.GriCmyk)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UcretHomaPage()),
                      );
                    },
                    icon: Icon(
                      Icons.touch_app,
                      color: Sabitler.TuruncuCmyk,
                    ),
                    label: Text(
                      "ISITICI MODELİNİZİ SEÇMEK İÇİN DOKUNUN",
                      style: TextStyle(
                          color: Sabitler.TuruncuCmyk,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "CİHAZINIZ\n\nEvo 3 - 3kw\nElektrikli Fanlı Isıtıcı",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Sabitler.TuruncuCmyk),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3, color: Sabitler.TuruncuCmyk)),
                          child: Image.asset('images/pixlr-evo3.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "ŞEHİR SEÇİNİZ",
                      style: Sabitler.appbarTextStyle,
                    ),
                    Sehir(),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "MOD SEÇİNİZ",
                              style: Sabitler.appbarTextStyle,
                            ),
                            ayarlardropdown(),
                          ],
                        ),
                        Column(
                          children: [
                            cevirilenbuton(),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /*        Text(_knobValue.toString()),
                    const SizedBox(height: 25),
                   */
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ISITICIYI BAŞLATTIĞINIZ DA SAYACI BAŞLATINIZ.",
                    style: Sabitler.appbarTextStyle,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Sabitler.TuruncuCmyk, width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              "Toplam Çalışma Süresi",
                              style: Sabitler.appbarTextStyle,
                            ),
                            Text(formatTime(_stopwatch!.elapsedMilliseconds),
                                style: TextStyle(
                                    fontSize: 48.0, color: Sabitler.TuruncuCmyk)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container( decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blue.shade300, width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text(
                                "Ortalama Elektrik Ücreti",
                                textAlign: TextAlign.center,
                                style: Sabitler.appbarTextStyle,
                              ),
                            ),
                            Text(
                              toplamdakika(_stopwatch!.elapsedMilliseconds)
                                      .toStringAsFixed(2) +
                                  "TL",
                              style: TextStyle(
                                  fontSize: 45, color: Colors.blue.shade300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Sabitler.TuruncuCmyk)),
                      onPressed: handleStartStop,
                      child: Text(
                        _stopwatch!.isRunning ? 'DURDUR' : 'BAŞLAT',
                        style: TextStyle(
                            color: Sabitler.GriCmyk,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Text("Hesaplanan fiyat ortalama fiyattır.Ortam sıcaklığını korunduğu ve yalıtımlı olduğu esas alınmıştır.",textAlign: TextAlign.center,style: TextStyle(color: Sabitler.GriCmyk,fontSize: 10),)
              ],
            )),
          ],
        ),
      ),
    );
  }

  DropdownButton<String> ayarlardropdown() {
    return DropdownButton<String>(
      iconSize: 25,
      alignment: Alignment.center,
      value: dropdownValueayar,
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Icon(
          Icons.settings,
          color: Sabitler.TuruncuCmyk,
        ),
      ),
      elevation: 16,
      style: const TextStyle(
        color: Sabitler.GriCmyk,
        fontWeight: FontWeight.bold,
      ),
      focusColor: Sabitler.TuruncuCmyk,
      dropdownColor: Sabitler.TuruncuCmyk,
      underline: Container(
        height: 5,
        width: 300,
        color: Sabitler.TuruncuCmyk,
      ),
      onChanged: (String? newValueayar) {
        setState(() {
          dropdownValueayar = newValueayar!;
        });
      },
      items:
          ayarlar.ayarlarlo.map<DropdownMenuItem<String>>((String valueayar) {
        return DropdownMenuItem<String>(
          value: valueayar,
          child: Text(valueayar),
        );
      }).toList(),
    );
  }

  Knob cevirilenbuton() {
    return Knob(
      controller: _controller,
      width: 100,
      height: 100,
      style: const KnobStyle(
        labelStyle: TextStyle(
          fontSize: 0,
          color: Colors.white,
        ),
        tickOffset: 5,
        labelOffset: 10,
        minorTicksPerInterval: 5,
        controlStyle: ControlStyle(
          glowColor: Sabitler.TuruncuCmyk,
          backgroundColor: Colors.black,
          shadowColor: Sabitler.TuruncuCmyk,
          tickStyle: ControlTickStyle(
              color: Colors.black, count: 50, margin: 2, width: 4),
        ),
        majorTickStyle: MajorTickStyle(
          color: Colors.white,
          thickness: 5,
          highlightColor: Sabitler.TuruncuCmyk,
          length: 20,
        ),
        minorTickStyle: MinorTickStyle(
          color: Colors.black,
          length: 0,
        ),
        pointerStyle: PointerStyle(
          color: Sabitler.TuruncuCmyk,
          offset: 4,
        ),
      ),
    );
  }

  DropdownButton<String> Sehir() {
    return DropdownButton<String>(
      iconSize: 30,
      alignment: Alignment.center,
      value: dropdownValue,
      icon: const Icon(
        Icons.location_on,
        color: Sabitler.TuruncuCmyk,
      ),
      elevation: 16,
      style: const TextStyle(
        color: Sabitler.GriCmyk,
        fontWeight: FontWeight.bold,
      ),
      focusColor: Sabitler.TuruncuCmyk,
      dropdownColor: Sabitler.TuruncuCmyk,
      underline: Container(
        height: 5,
        width: 200,
        color: Sabitler.TuruncuCmyk,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: Turkiye.locations.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value.toUpperCase(),
          ),
        );
      }).toList(),
    );
  }
}
