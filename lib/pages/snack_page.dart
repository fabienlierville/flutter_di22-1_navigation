import 'package:flutter/material.dart';

class SnackPage extends StatefulWidget {
  const SnackPage({super.key});

  @override
  State<SnackPage> createState() => _SnackPageState();
}

class _SnackPageState extends State<SnackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackPage"),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: (){
                  callSnack();
                },
                child: Text("Afficher SnackBar")
            )
          ],
        ),
      ),
    );
  }

  void callSnack(){
    //Conçoit le SnackBar
    SnackBar snackBar = SnackBar(
        content: Text("Message supprimé"),
      duration: Duration(seconds: 5),
      backgroundColor: Colors.red,
      action: SnackBarAction(
        label: "Annuler",
        textColor: Colors.white,
        onPressed: (){
          print("Annuler suppression");
          //Todo faire la récupération du mail
        },
      ),
    );

    // Lancement du SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


}
