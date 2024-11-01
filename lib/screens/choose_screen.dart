import 'package:flutter/material.dart';

class ChooseScreen extends StatefulWidget {
  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Payment',
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
            SizedBox(height: 16),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/m0.png', width: 80),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lorem Chair',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Dark Grey',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[100],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: _decrement,
                                icon: Icon(Icons.remove, color: Colors.orange),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  '$_quantity',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black87),
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
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp.99.999",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Add notes",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 19),
            Text(
              'Mr. Lorem Ipsum\n2972 Westheimer Rd. Santa Ana, Illinois 85486',
              style: TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 19),
            Text(
              'Sending by',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 8),
            Text('JNE Rp. 10.000'),
            SizedBox(height: 16),
            Text(
              'Choose Payment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _PaymentOption(icon: 'assets/images/dana.png'),
                _PaymentOption(icon: 'assets/images/ovo.png'),
                _PaymentOption(icon: 'assets/images/gopay.png'),
                _PaymentOption(icon: 'assets/images/bca.png'),
                _PaymentOption(icon: 'assets/images/ovo.png'),
                _PaymentOption(icon: 'assets/images/bri.png'),
                _PaymentOption(icon: 'assets/images/visa.png'),
                _PaymentOption(icon: 'assets/images/mastercard.png'),
                _PaymentOption(icon: 'assets/images/dana.png'),
                _PaymentOption(icon: 'assets/images/bca.png'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Rp.99.999",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/paye');
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
              child: Text('Pay Now'),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _PaymentOption extends StatelessWidget {
  final String icon;

  const _PaymentOption({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Image.asset(icon, height: 40),
      ),
    );
  }
}
