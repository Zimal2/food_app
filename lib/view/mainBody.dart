import 'package:flutter/material.dart';
import 'package:food_app/view/dashboardDetail.dart';
import 'package:food_app/view/reviews.dart';
import 'package:food_app/view/topChefs.dart';
import 'package:google_fonts/google_fonts.dart';

class MainBody extends StatefulWidget {
  MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  int selectedIndex = -1;
  // Track the selected index
  final List<String> names = [
    "Top Chef",
    "Reviews",
    "Chinese food",
    "Pakistani food"
  ];
  List screens = [
    TopChefsScreen(),
    ReviewsScreen(),
    TopChefsScreen(),
    TopChefsScreen()
  ];
  final List<String> images = [
    'assets/images/img3.png',
    'assets/images/lightmenu (2).png',
    'assets/images/img.png',
  ];

  final List<String> images2 = [
    'assets/images/37137acb87995eb4259dd60700521f94-removebg-preview.png',
    'assets/images/1782235d5d3fd2d50eb89b62c7bd0169-removebg-preview.png',
    'assets/images/lightmenu (5).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFcbeaec),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.65,
                    width: 50,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: names.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => screens[index],
                                      ));
                                  setState(() {
                                    selectedIndex =
                                        index; // Update the selected index on tap
                                  });
                                },
                                child: SizedBox(
                                  height: 100,
                                  child: Row(
                                    children: [
                                      // const Icon(Icons.circle,
                                      //     size: 10, color: Colors.grey),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 100,
                                        width: 40,
                                        color: selectedIndex == index
                                            ? Colors.grey.shade100
                                            : Colors
                                                .transparent, // Change color if selected
                                        child: Center(
                                          child: RotatedBox(
                                            quarterTurns: 1,
                                            child: Text(
                                              names[index],
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Find your",
                        style: TextStyle(),
                      ),
                      Text(
                        "Favorite food",
                        //Pacifico
                        style: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        // style: TextStyle(
                        //     fontSize: 25, fontWeight: FontWeight.w500)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: 550,
                          width: 290,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "NEAR YOU",
                                style: GoogleFonts.nunito(letterSpacing: 3),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 200,
                                //  color: Colors.pink,
                                child: ListView.builder(
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Stack(
                                    children: [
                                      const SizedBox(
                                        height: 200,
                                        width: 220,
                                      ),
                                      Positioned(
                                        top: 20,
                                        left: 30,
                                        child: GestureDetector(
                                          onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const DetailScreen(),
                                              )),
                                          child: Container(
                                            height: 180,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                color: const Color(0xFF7da1a0),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 95, left: 20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "\$300.0",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    "Chicken Hamburger",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    "The best of its type, with chicken and fries",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                          top: 45,
                                          right: 35,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xFF495e5f),
                                          )),
                                      Positioned(
                                        //  top: 2,
                                        bottom: 75,
                                        right: 85,
                                        child: Image.asset(
                                          height: 150,
                                          width: 150,
                                          images[index],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                "POPULAR",
                                style: GoogleFonts.nunito(letterSpacing: 3),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 200,
                                child: ListView.builder(
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Stack(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 220,
                                      ),
                                      Positioned(
                                        top: 20,
                                        left: 30,
                                        child: InkWell(
                                          onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const DetailScreen(),
                                              )),
                                          child: Container(
                                            height: 180,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                color: const Color(0xFF7da1a0),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 95, left: 20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "\$300.0",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    "Chicken Hamburger",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    "The best of its type, with chicken and fries",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                          top: 45,
                                          right: 35,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xFF495e5f),
                                          )),
                                      Positioned(
                                        //  top: 2,
                                        bottom: 75,
                                        right: 85,
                                        child: Image.asset(
                                          height: 150,
                                          width: 150,
                                          images2[index],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
