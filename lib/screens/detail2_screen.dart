import 'package:flutter/material.dart';

class Detail2Screen extends StatefulWidget {
  @override
  _Detail2ScreenState createState() => _Detail2ScreenState();
}

class _Detail2ScreenState extends State<Detail2Screen> {
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
      body: SingleChildScrollView(
        child: Column(
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
              "assets/images/m5.png",
              height: 350,
              width: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.lightGreen[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 3,
                        width: 70,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20),
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
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[100],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: _decrement,
                                icon: Icon(Icons.remove, color: Colors.orange),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  '$_quantity',
                                  style: TextStyle(fontSize: 18, color: Colors.black87),
                                ),
                              ),
                              IconButton(
                                onPressed: _increment,
                                icon: Icon(Icons.add, color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Relax, Comfortable",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
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
                        ...[Colors.black87, Colors.red, Colors.grey].map((color) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: color,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )),
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
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/desc');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          minimumSize: Size(double.infinity, 60),
                          textStyle: TextStyle(fontSize: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text('Add to Cart'),
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
