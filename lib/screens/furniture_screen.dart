import 'package:flutter/material.dart';

class FurnitureScreen extends StatefulWidget {
  @override
  _FurnitureScreenState createState() => _FurnitureScreenState();
}

class _FurnitureScreenState extends State<FurnitureScreen> {
  String selectedCategory = "Chair"; 

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
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "My Furniture",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      "Your partner interior design",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.black87),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Try search 'Computer table'",
                              hintStyle: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/profil');
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryButton("Chair",
                   onTap: () {
                   Navigator.pushNamed(context, '/furniture');
                  },),
                  SizedBox(width: 10),
                  _buildCategoryButton("Table",
                   onTap: () {
                   Navigator.pushNamed(context, '/fur');
                  },),
                  SizedBox(width: 10),
                  _buildCategoryText("Bed"),
                  SizedBox(width: 10),
                  _buildCategoryText("Carpet"),
                  SizedBox(width: 10),
                  _buildCategoryText("Sofa"),
                  SizedBox(width: 10),
                  _buildCategoryText("Carpet"),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "Best for you",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCard(
                    'assets/images/t1.png',
                    "Lorem Chair",
                    "4.9",
                    "Rp.99.999",
                    onTap: () {
                      Navigator.pushNamed(context, '/detail');
                    },
                  ),
                  _buildCard('assets/images/t2.png', "Lorem Chair", "4.9", "Rp.99.999"),
                  _buildCard('assets/images/t1.png', "Lorem Chair", "4.9", "Rp.99.999"),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          _buildLoremChairCard(
            'assets/images/m.png',
            "Loren Chair",
            "Chill, Comfortable",
            onTap: () {
              Navigator.pushNamed(context, '/check');
            },
          ),
          _buildLoremChairCard('assets/images/m1.png', "Loren Chair", "Chill, Comfortable",
          onTap: () {
              Navigator.pushNamed(context, '/dis');
            },),
          _buildLoremChairCard('assets/images/m2.png', "Loren Chair", "Chill, Comfortable"),
          _buildLoremChairCard('assets/images/m3.png', "Loren Chair", "Chill, Comfortable"),
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

  Widget _buildCategoryButton(String category, {Function()? onTap}) {
  return ElevatedButton(
    onPressed: onTap ?? () {
      setState(() {
        selectedCategory = category;
      });
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: selectedCategory == category ? Colors.orange : Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    child: Text(
      category,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: selectedCategory == category ? Colors.white : Colors.black87,
      ),
    ),
  );
}

  Widget _buildCategoryText(String category) {
    return Text(
      category,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildCard(String imagePath, String title, String rating, String price, {Function()? onTap}) {
    return Card(
      elevation: 6,
      child: InkWell(
        onTap: onTap, 
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
                    SizedBox(width: 6),
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
      ),
    );
  }

  Widget _buildLoremChairCard(String imagePath, String title, String description, {Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 4,
        child: InkWell(
          onTap: onTap,
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
                          Icon(Icons.star, color: Colors.grey, size: 16),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
