import 'package:flutter/material.dart';
import 'package:food_app/view/cartScreen.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> nutritions = [
    "Calories",
    "Proteins",
    "Sodium",
    "Sulfur",
    "Calcium"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top half image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              'assets/images/img3.png',
              fit: BoxFit.cover,
            ),
          ),
          // Back arrow and menu icons
          Positioned(
            top: 40, // Adjust this value as needed for your design
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    // Handle menu button press
                  },
                ),
              ],
            ),
          ),
          // Bottom half container with scrollable content
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, -5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 33,
                    left: 16,
                    right: 16,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(
                              'Free Delivery',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(
                              'Min to arrive: 30',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Hamburger',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Ingredients',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Cheese',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '2 cups',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tomatoes',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '3 pieces',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Onions',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '1 piece',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Pepper',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '1 tsp',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Salt',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'to taste',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // Example 16
                        // SimpleCircularProgressBar(
                        //   mergeMode: true,
                        //   onGetText: (double value) {
                        //     return Text('${value.toInt()}%');
                        //   },
                        // ),
                        const SizedBox(height: 16),
                        const Text(
                          'Nutrition Quantity',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 130,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Container(
                                  width: 80,
                                  height: 130,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFcbeaec),
                                      borderRadius: BorderRadius.circular(50)),
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF78a2a2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '266',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      //  const SizedBox(height: 5),
                                      Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              nutritions[index],
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            const Text(
                                              '100',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )

                        //     Container(
                        //       height: 200,
                        //       width: 300,
                        //       color: Colors.amber,
                        //       child: Row(children: [   CustomContainer()])
                        //  ),
                        ,
                        const Text(
                          'Recipe',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildStepCard(1,
                                'Make the mayonnaise with a pestle and mortar by rapidly mixing the mashed avocado gradually into the egg yolks.'),
                            SizedBox(height: 16),
                            _buildStepCard(2,
                                'Layer the rocket onto the toasted bread first, then the chicken avocado mayo, followed by a good grind of black pepper before layering on as many onion slices.'),
                            SizedBox(height: 16),
                            _buildStepCard(3,
                                'Nullam eget mi libero. Curabitur feugiat ex non nisi egestas, a tincidunt felis dapibus.'),
                            SizedBox(height: 16),
                            _buildStepCard(4,
                                'Vivamus ut magna at magna luctus condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'),
                            SizedBox(height: 16),
                            _buildStepCard(5,
                                'Aenean cursus, ipsum at sodales dignissim, est ligula hendrerit nunc, ac vulputate enim magna ac nunc.'),
                          ],
                        ),
                        // const Text(
                        //   'Step 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis accumsan lorem. Morbi ut felis eget dolor luctus malesuada.\n\n'
                        //   'Step 2: Suspendisse potenti. Ut hendrerit, nisi ac interdum pretium, erat nisi volutpat nisi, eget euismod felis nisi in felis.\n\n'
                        //   'Step 3: Nullam eget mi libero. Curabitur feugiat ex non nisi egestas, a tincidunt felis dapibus.\n\n'
                        //   'Step 4: Vivamus ut magna at magna luctus condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\n'
                        //   'Step 5: Aenean cursus, ipsum at sodales dignissim, est ligula hendrerit nunc, ac vulputate enim magna ac nunc.',
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          //add to cart
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.33,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 8),
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.shopping_cart, color: Color(0xFFcbeaec)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.24,
            child: Container(
              width: 55,
              height: 55,
              decoration: const BoxDecoration(
                color: Color(0xFF78a2a2),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  '\$30',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildStepCard(int stepNumber, String description) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 8,
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            //  color: Color(0xFFFFCDD2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '$stepNumber',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFCDD2)),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text(
            description,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}
