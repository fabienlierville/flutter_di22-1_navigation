import 'package:flutter/material.dart';

class SimplePage extends StatefulWidget {
  const SimplePage({super.key});

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimplePage"),
      ),
      body: Center(
        child: Column(
          children: [
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
}
