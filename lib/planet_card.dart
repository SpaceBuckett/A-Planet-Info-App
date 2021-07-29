import 'package:flutter/material.dart';
import 'constants.dart';

class PlanetCard extends StatelessWidget {
  PlanetCard(
      {required this.planetImagePath,
      required this.planetName,
      required this.planetNickName});

  final String planetImagePath;
  final String planetName;
  final String planetNickName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      height: kCardHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blue, Colors.red],
        ),
        color: Colors.blueGrey.shade700.withOpacity(0.5),
        // borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Image(
          image: AssetImage(planetImagePath),
        ),
        title: Text(planetName),
        subtitle: Text(planetNickName),
      ),
    );
  }
}
