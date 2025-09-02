import 'package:flutter/material.dart';

class EcranB extends StatefulWidget {
  final String param1;
  const EcranB({Key? key, required this.param1}): super(key: key);
  @override
  State<EcranB> createState() => _EcranBState();
}

class _EcranBState extends State<EcranB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecran B'),
      ),
      body: Column(
        children: [
          Text(widget.param1,style: TextStyle(color: Colors.black,fontSize: 20),)
        ],
      ),
    );
  }
}