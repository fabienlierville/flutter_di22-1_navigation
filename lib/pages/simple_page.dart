import 'package:flutter/material.dart';
import 'package:navigation/widgets/my_custom_bottom_navigation.dart';

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
      bottomNavigationBar: MyCustomBottomNavigation(currentIndex: 1,),
      appBar: AppBar(
        title: Text("SimplePage"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(choixTransport),
            FilledButton(
                onPressed: (){
                  simple();
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
            children: [
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
