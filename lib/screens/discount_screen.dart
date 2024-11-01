import 'package:flutter/material.dart';

class DiscountScreen extends StatelessWidget {
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
      body: ListView(
        children: [   
           SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Discount',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          _buildLoremChairCard('assets/images/m7.png', "Loren Chair", "Chill,Comfortable"),
          _buildLoremChairCard('assets/images/m8.png', "Loren Chair", "Chill,Comfortable"),
          _buildLoremChairCard('assets/images/m9.png', "Loren Chair", "Chill,Comfortable"),
          _buildLoremChairCard('assets/images/m10.png', "Loren Chair", "Chill,Comfortable"),
         _buildLoremChairCard('assets/images/m10.png', "Loren Chair", "Chill,Comfortable"),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, size: 30),
                Icon(Icons.search, color: Colors.black87, size: 30),
                Icon(Icons.favorite, color: Colors.black87, size: 30),
                Icon(Icons.person, color: Colors.black87, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String imagePath, String title, String rating, String price) {
    return Card(
      elevation: 6,
      child: Container(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 100,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  SizedBox(width: 6),
                  Text(rating),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoremChairCard(String imagePath, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 4,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 100,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        const Text("5.0"),
                      ],
                    ),
                    const Text(
                      "Rp.99.999.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}