import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _quantity = 0;

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 0) _quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'Detail',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            "assets/images/t1.png",
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 50),
          Expanded(
            child: Container(
              color: Colors.lightGreen[100],
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 3,
                    width: 70,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lorem Chair",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Row(
                        children: [
                          _buildQuantityButton(Icons.remove, _decrement),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              '$_quantity',
                              style: TextStyle(fontSize: 18, color: Colors.black87),
                            ),
                          ),
                          _buildQuantityButton(Icons.add, _increment),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Relax, Comfortable",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  _buildDescriptionSection(),
                  SizedBox(height: 20),
                  _buildColorAndPriceSection(),
                  SizedBox(height: 10),
                  _buildAddToCartButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.orange),
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColorAndPriceSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Text(
            'Color',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(width: 10),
          _buildColorCircle(Colors.black87),
          SizedBox(width: 4),
          _buildColorCircle(Colors.red),
          SizedBox(width: 4),
          _buildColorCircle(Colors.grey),
          Spacer(),
          Text(
            'Total Rp.99.999',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColorCircle(Color color) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildAddToCartButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/check');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, 70),
        textStyle: TextStyle(fontSize: 30),
      ),
      child: Text('Add to Cart'),
    );
  }
}
