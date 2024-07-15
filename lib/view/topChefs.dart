import 'package:flutter/material.dart';

class TopChefsScreen extends StatelessWidget {
  final List<Map<String, String>> chefs = [
    {'name': 'Chef Gordon', 'image': 'assets/images/chef1.jpg'},
    {'name': 'Chef Ramsay', 'image': 'assets/images/chef2.jpg'},
    {'name': 'Chef Jamie', 'image': 'assets/images/chef3.jpg'},
    {'name': 'Chef Nigella', 'image': 'assets/images/chef5.jpg'},
    {'name': 'Chef Oliver', 'image': 'assets/images/chef1.jpg'},
    {'name': 'Chef Wolfgang', 'image': 'assets/images/chef2.jpg'},
    {'name': 'Chef Heston', 'image': 'assets/images/chef3.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Chefs'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: chefs.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(chefs[index]['image']!),
              ),
              SizedBox(height: 8),
              Text(
                chefs[index]['name']!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

