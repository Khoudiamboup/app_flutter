import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Brian Smith',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Joined since 2021'),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Divider(),
              _ProfileSection(title: 'Account', items: [
                'Lorem ipsum',
                'Lorem ipsum',
                'Lorem ipsum',
              ]),
              Divider(),
              _ProfileSection(title: 'Settings', items: [
                'Lorem ipsum',
                'Lorem ipsum',
                'Lorem ipsum',
              ]),
              Divider(),
              _ProfileSection(title: 'Profile', items: [
                'Lorem ipsum',
                'Lorem ipsum',
              ]),
              Divider(),
              _ProfileSection(title: 'Notification', items: [
                'Lorem ipsum',
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const _ProfileSection({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 10),
          Column(
            children: items
                .map((item) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(child: Text(item)),
                          Icon(Icons.chevron_right, color: Colors.grey),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
