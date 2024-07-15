import 'package:flutter/material.dart';

class ReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Top half image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(
              'assets/images/Ilish Maach Bhaja - Playful Cooking.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Bottom half container with reviews
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Text(
                          '34 images • 182 comments',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/Delicious Chicken & Goat Cheese dish.jpg'), // Replace with your image path
                        ),
                        const SizedBox(width: 8),
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/1782235d5d3fd2d50eb89b62c7bd0169-removebg-preview.png'), // Replace with your image path
                        ),
                        const SizedBox(width: 8),
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/37137acb87995eb4259dd60700521f94-removebg-preview.png'), // Replace with your image path
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xFFcbeaec),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              '+7',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        children: [
                          const ReviewWidget(
                            name: 'Erich Haley',
                            time: '3 min',
                            comment:
                                'Very good but you need to adjust for your own ingredients and taste instead of blindly...',
                          ),
                          const ReviewWidget(
                            name: 'Vita Volkman',
                            time: '1 hr',
                            comment:
                                'Very good but you need to adjust for your own ingredients and taste instead of blindly...',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  final String name;
  final String time;
  final String comment;

  const ReviewWidget({
    required this.name,
    required this.time,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: const Icon(Icons.person, color: Colors.grey),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(comment),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border,
                          size: 20, color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.comment,
                          size: 20, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
