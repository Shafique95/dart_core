import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/user_model.dart';
import 'user_list_page.dart';
import '../widget/PlaceholderWidget.dart';
import 'extra_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Box<UserModel> userBox = Hive.box<UserModel>('users');
  int _currentIndex = 0;

  final List<String> _pageTitles = ['Users', 'Dashboard', 'Settings'];

  final List<Widget> _pages = [
    UserListPage(),
    PlaceholderWidget(title: 'Dashboard'),
    PlaceholderWidget(title: 'Settings'),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 220, // set drawer width (default is about 304 on large devices)
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 100, // smaller drawer header height (default is 200)
                child: DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              ListTile(
                dense: true, // reduces height of tile
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ), // controls padding inside tile
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              ListTile(
                dense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 2;
                  });
                },
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade400,
                indent: 16,
                endIndent: 16,
              ),

              ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    '/extrapage',
                    arguments: {'email': 'email', 'password': 'password'},
                  );
                },
              ),
            ],
          ),
        ),
      ),

      appBar: AppBar(
        title: Text(_pageTitles[_currentIndex]),
        automaticallyImplyLeading: true, // shows hamburger menu
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'profile') {
                // Navigate to Profile page or show dialog
                // Navigator.pushNamed(
                //   context,
                //   '/profile',
                // ); // update route as needed
              } else if (value == 'logout') {
                // Logout logic, e.g., clear user session, then navigate to login
                Navigator.pushReplacementNamed(context, '/login');
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'profile', child: Text('Profile')),
              const PopupMenuItem(value: 'logout', child: Text('Logout')),
            ],
          ),
        ],
      ),

      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Users'),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
