import 'package:flutter/material.dart';
import 'package:navigation/pages/alert_page.dart';
import 'package:navigation/pages/bottom_page.dart';
import 'package:navigation/pages/simple_page.dart';
import 'package:navigation/pages/snack_page.dart';

class MyCustomBottomNavigation extends StatelessWidget {
  const MyCustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.warning), label: "Alert"),
        BottomNavigationBarItem(icon: Icon(Icons.forward), label: "Simple"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Snack"),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_downward), label: "Bottom"),
      ],
      onTap: (int index){
        switch(index){
          case 0:
            Navigator.pushNamed(context,"/alert");
            break;
          case 1:
            Navigator.pushNamed(context,"/simple");
            break;
          case 2:
            Navigator.pushNamed(context,"/snack");
            break;
          case 3:
            Navigator.pushNamed(context,"/bottom");
            break;
        }
      },
    );
  }
}
