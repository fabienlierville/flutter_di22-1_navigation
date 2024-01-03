import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertPage"),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: (){
                  alerte();
                },
                child: Text("Afficher AlertDialog")
            )
          ],
        ),
      ),
    );
  }

  Future<void> alerte() async{
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contextDialog){
          return AlertDialog(
            title: Text("Erreur !!"),
            content: Text("Nous avons détecté un soucis"),
            actions: [
              TextButton(
                  onPressed: (){
                    print("Annuler");
                    Navigator.pop(contextDialog);
                  },
                  child: Text("Annuler", style: TextStyle(color: Colors.red),)),
              TextButton(
                  onPressed: (){
                    print("Validation");
                    Navigator.pop(contextDialog);
                  },
                  child: Text("Ok", style: TextStyle(color: Colors.blue),)),
            ],
          );
        }
    );
  }

}
