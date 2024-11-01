import 'package:flutter/material.dart';

class ValideScreen extends StatelessWidget {
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
        children: [
         Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/4.png',
                  height: 400,
                  width: 400,
                ),
                SizedBox(height: 10),
                Text(
                  'Register Success',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
               
                SizedBox(height: 80), 
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/furniture');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    minimumSize: Size(400, 90), 
                    textStyle: TextStyle(fontSize: 30),
                  ),
                  child: Text('Login Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
