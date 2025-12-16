import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp();
  }

  var doc;
  var etudiant;


  void getData() async {
    DocumentReference colref = FirebaseFirestore.instance.collection('etudiants').doc("6272880");
    doc = await colref.get();
    etudiant = doc.data();
    print(etudiant);
    setState(() {

    });
  }

  void mettreAJour() async {
    DocumentReference colref = FirebaseFirestore.instance.collection('etudiants').doc("6272880");
    colref.update({"complete": "true"});
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child:
        Column(children: [
          Expanded(flex: 1 ,child: Row(children: [
            if (etudiant != null) ...[
              Column(children: [
                Row(children: [
                  Text("Nom: ${etudiant["nom"]}"),
                ],),
                Row(children: [
                  Text("prenom: ${etudiant["prenom"]}"),
                ],),
                Row(children: [
                  Text("complete: ${etudiant["complete"]}"),
                ],),

              ],)
            ] else ...[
              Text("Aucun étudiant chargé"),
            ]
          ],
          )),
          Expanded(flex: 1, child: Row( mainAxisAlignment: MainAxisAlignment.center ,children: [
            ElevatedButton(onPressed: getData, child: Text("Get Data")),
            ElevatedButton(onPressed: mettreAJour, child: Text("update") ),
          ],),),



        ],),
      ),
    );
  }
}
