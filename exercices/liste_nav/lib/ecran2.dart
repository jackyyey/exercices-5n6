import 'package:flutter/material.dart';
import 'package:liste_nav/truc.dart';

// TODO Un ecran minimal avec un tres peu de code
class Ecran2 extends StatefulWidget {

  final Truc leTruc;

  const Ecran2({Key? key, required this.leTruc}): super(key:key);
  @override
  State<Ecran2> createState() => _Ecran2State();
}

class _Ecran2State extends State<Ecran2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("ecran2"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Voici le nom du Truc: ${widget.leTruc.nom}"),
            Text("Voici le id du Truc: ${widget.leTruc.id}"),
          ],
        ),
      ),
    );
  }
}