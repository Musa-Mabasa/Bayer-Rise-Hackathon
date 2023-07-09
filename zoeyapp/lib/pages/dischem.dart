import 'package:flutter/material.dart';

class DisChem extends StatefulWidget {
  const DisChem({Key? key}) : super(key: key);

  @override
  _DisChemState createState() => _DisChemState();
}

class _DisChemState extends State<DisChem> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/dischem.jpg"),
            fit: BoxFit.cover,
          ),
        )
      )
    );
  }
}
