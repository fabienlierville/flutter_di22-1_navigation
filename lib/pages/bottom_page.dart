import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  String choixTransport = "Aucun Choix";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomPage"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(choixTransport),
            FilledButton(
                onPressed: (){
                  bottom();
                },
                child: Text("Afficher BottomSheet")
            )
          ],
        ),
      ),
    );
  }

  Future<void> bottom() async{
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        builder: (BuildContext contextDialog){
          return Column(
            children: [
              Text("Veuillez choisir votre transport"),
              SimpleDialogOption(
                onPressed: (){
                  setState(() {
                    choixTransport = "Voiture";
                    Navigator.pop(contextDialog);
                  });
                },
                child: Row(
                  children: [
                    Icon(Icons.directions_car),
                    Text("Voiture")
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: (){
                  setState(() {
                    choixTransport = "Bateau";
                    Navigator.pop(contextDialog);
                  });
                },
                child: Row(
                  children: [
                    Icon(Icons.directions_boat),
                    Text("Bateau")
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: (){
                  setState(() {
                    choixTransport = "Avion";
                    Navigator.pop(contextDialog);
                  });
                },
                child: Row(
                  children: [
                    Icon(Icons.airplanemode_active),
                    Text("Avion")
                  ],
                ),
              ),
            ],
          );
        }
    );
  }
}
