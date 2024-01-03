import 'package:flutter/material.dart';

class SimplePage extends StatefulWidget {
  const SimplePage({super.key});

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  String choixTransport = "Aucun Choix";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimplePage"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(choixTransport),
            FilledButton(
                onPressed: (){

                },
                child: Text("Afficher SimpleDialog")
            )
          ],
        ),
      ),
    );
  }

  Future<void> simple() async{
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contextDialog){
          return SimpleDialog(
            title: Text("Choisissez votre transport"),

          );
        }
    );
  }
}
