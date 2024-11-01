import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '9:41',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(Icons.network_cell, color: Colors.black),
                SizedBox(width: 10),
                Icon(Icons.wifi, color: Colors.black),
                SizedBox(width: 10),
                Icon(Icons.battery_full, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Centrer le contenu
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(), // Vous pouvez ajouter un widget ici si nécessaire
                Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30), // Réduit l'espace pour une meilleure organisation
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centrer verticalement
              children: [
                Image.asset(
                  'assets/images/un.png',
                  height: 300, // Réduit la taille de l'image pour mieux s'adapter
                  width: 300,
                ),
                SizedBox(height: 20), // Espace entre l'image et le texte
                Text(
                  'My Furniture',
                  style: TextStyle(
                    fontSize: 24, // Ajustement de la taille de la police
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Your perfect interior design',
                  style: TextStyle(
                    fontSize: 16, // Réduit la taille du sous-titre
                    color: Colors.black54, // Change la couleur pour une meilleure hiérarchie visuelle
                  ),
                  textAlign: TextAlign.center, // Centrer le texte
                ),
                SizedBox(height: 80), // Réduit l'espace avant le bouton
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    minimumSize: Size(400, 70),
                    textStyle: TextStyle(fontSize: 20), // Réduit la taille du texte du bouton
                  ).copyWith(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: Text('Continuer'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
