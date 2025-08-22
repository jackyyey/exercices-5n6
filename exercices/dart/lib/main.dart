import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexLapin = Random().nextInt(4);
  int _pafs = 0;
  int _pofs = 0;


  @override
  Widget build(BuildContext context) {
    var r1 = MaterialButton(
      onPressed: (){this._indexLapin == 0 ? this._pafs++: this._pofs++; _indexLapin = Random().nextInt(4); setState(() {});},
      child: Text(this._indexLapin == 0 ? "Lapin": "Taupe"),
    );
    var r2 = MaterialButton(
      onPressed: (){this._indexLapin == 1 ? this._pafs++: this._pofs++; _indexLapin = Random().nextInt(4); setState(() {
      });},
      child: Text(this._indexLapin == 1 ? "Lapin": "Taupe"),
    );
    var r3 = MaterialButton(
      onPressed: (){this._indexLapin == 2 ? this._pafs++: this._pofs++; _indexLapin = Random().nextInt(4); setState(() {
      });},
      child: Text(this._indexLapin == 2 ? "Lapin": "Taupe"),
    );
    var r4 = MaterialButton(
      onPressed: (){this._indexLapin == 3 ? this._pafs++: this._pofs++; _indexLapin = Random().nextInt(4);  setState(() {
      });},
      child: Text(this._indexLapin == 3 ? "Lapin": "Taupe"),
    );
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Pafs: ${_pafs}", style: TextStyle(color: Colors.green, fontSize: 20)),
                Text("Flops: ${_pofs}", style: TextStyle(color: Colors.red, fontSize: 20)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tape le lapin", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                r1,
                r2
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                r3,
                r4
              ],
            )
          ],
        ),
      ),
    );
  }
}
