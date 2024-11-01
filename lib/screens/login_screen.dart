import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
              ),
              SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/con.png',
                      height: 400,
                      width: 400,
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10),
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
                      child: Text('Login'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Or login with',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400, 70),
                        textStyle: TextStyle(fontSize: 20),
                      ).copyWith(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icon.png',
                            height: 25,
                          ),
                          SizedBox(width: 10),
                          Text('Google', style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
