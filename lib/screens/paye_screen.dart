import 'package:flutter/material.dart';

class PayeScreen extends StatelessWidget {
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payement Check',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/m11.png',
                  height: 500,
                  width: 400,
                ),
                SizedBox(height: 5),
                Text(
                  'Successful Payement',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 150),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/furniture');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    minimumSize: Size(400, 70),
                    textStyle: TextStyle(fontSize: 30),
                  ).copyWith(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: Text('Back'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
