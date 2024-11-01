import 'package:flutter/material.dart';

class DescScreen extends StatefulWidget {
  @override
  _DescScreenState createState() => _DescScreenState();
}

class _DescScreenState extends State<DescScreen> {
  int _quantity = 1;

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 1) _quantity--;
    });
  }

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            _buildLoremChairCard(
              'assets/images/m.png',
              "Loren Chair",
              "Chill, Comfortable",
            ),
            Spacer(),
            Expanded(
              child: Container(
                color: Colors.lightGreen[100],
                child: Column(
                  children: [
                  SizedBox(height: 20),
                  Container(
                    height: 3,
                    width: 70,
                    color: Colors.grey,
                  ),
                    Text(
                      'Selected Item',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildItemRow('Rocking Chair', 'Rp. 99.999'),
                    SizedBox(height: 10),
                    _buildItemRow('Lounge Chair', 'Rp. 99.999'),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    _buildItemRow('Total', 'Rp. 99.999', isTotal: true),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cho');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemRow(String itemName, String price, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          itemName,
          style: TextStyle(
            fontSize: isTotal ? 21 : 19,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            color: Colors.black87,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontSize: isTotal ? 21 : 19,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            color: Colors.black87,
          ),
        ),
      ],
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
              width: 150,
              height: 90,
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
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                      ),
                    ),
                    const Text(
                      "Rp.99.999.",
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: IconButton(
                          onPressed: _decrement,
                          icon: Icon(Icons.remove, color: Colors.orange),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                        child: Text(
                          '$_quantity',
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: IconButton(
                          onPressed: _increment,
                          icon: Icon(Icons.add, color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
