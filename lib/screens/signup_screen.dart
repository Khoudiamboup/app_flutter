import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Create My Furniture',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Create account to find best Furniture',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/3.png',
                    height: 300,
                    width: 300,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Fullname',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone number',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Confirm Password',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
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
                    child: Text('Register'),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          "Login Now",
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
    );
  }
}
