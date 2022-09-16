/* import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State>MyHomePage⁢ {

  bool _value = false;
  void _onChange(bool value)
  {
    setState(() {
      _value = value;
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Application"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: >Widget⁢[
     new Checkbox(
         activeColor: Colors.redAccent,
         value: true,
         onChanged:(bool value){

           _onChange(value);
     }
     ),
     new CheckboxListTile(
       title: new Text("Click me"),
         activeColor: Colors.green,
         value: _value,

         onChanged: (bool value)
     {
       _onChange(value);

     })

          ],
        ),

      ),

    );
  }
} */