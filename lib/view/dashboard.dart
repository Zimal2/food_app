import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:food_app/view/mainBody.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _advancedDrawerController = AdvancedDrawerController();
  int selectedIndex = 0;
  final PageController controller = PageController();

  final List<Widget> _pages = [
    MainBody(),
    const Center(
        child: Text(
      'Home',
    )),
    const Center(child: Text('Favourite')),
    const Center(child: Text('Categories')),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Container(
          // width:
          //     MediaQuery.of(context).size.width * 0.6, // Adjust width as needed

          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/lightmenu (2).png',
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: GoogleFonts.nunito(letterSpacing: 2),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.account_circle_rounded),
                  title: Text(
                    'Profile',
                    style: GoogleFonts.nunito(letterSpacing: 2),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.favorite),
                  title: Text(
                    'Favourites',
                    style: GoogleFonts.nunito(letterSpacing: 2),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: Text(
                    'Settings',
                    style: GoogleFonts.nunito(letterSpacing: 2),
                  ),
                ),
                const Spacer(),
                Divider(
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.support_agent_rounded),
                  title: Text(
                    'Customer support',
                    style: GoogleFonts.nunito(letterSpacing: 2),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.logout),
                  title: Text(
                    'Logout',
                    style: GoogleFonts.nunito(letterSpacing: 2),
                  ),
                ),
                
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: const Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFcbeaec),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu_open_outlined,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.person_3_outlined),
            )
          ],
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          height: 96,
          decoration: BoxDecoration(
            color: const Color(0xFFcbeaec),
          ),
          child: FloatingNavbar(
            elevation: 50,
            backgroundColor: Color.fromARGB(255, 191, 220, 222),
            selectedBackgroundColor: Colors.transparent,
            onTap: (int val) {},
            currentIndex: 0,
            items: [
              FloatingNavbarItem(
                icon: Icons.home,
                //  title: 'Home',
              ),
              FloatingNavbarItem(
                icon: Icons.favorite_border_outlined,
                //title: 'Explore'
              ),
              FloatingNavbarItem(
                icon: Icons.category_outlined,
                //   title: 'Chats'
              ),
              FloatingNavbarItem(
                icon: Icons.settings,
                // title: 'Settings'
              ),
            ],
          ),
        ),
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: _pages,
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
