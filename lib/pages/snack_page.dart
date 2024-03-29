import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/bottom_page.dart';
import 'package:navigation/widgets/my_custom_bottom_navigation.dart';

class SnackPage extends StatefulWidget {
  const SnackPage({super.key});

  @override
  State<SnackPage> createState() => _SnackPageState();
}

class _SnackPageState extends State<SnackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyCustomBottomNavigation(currentIndex: 2,),
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
            ),
            FilledButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return BottomPage();
                      })
                  );
                },
                child: Text("Aller vers Bottom Page")
            ),
            FilledButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(builder: (context){
                        return BottomPage();
                      })
                  );
                },
                child: Text("Aller vers Bottom Page")
            ),
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
