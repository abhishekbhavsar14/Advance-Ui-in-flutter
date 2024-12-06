import 'package:flutter/material.dart';

void main() {
  runApp(Task23App());
}

class Task23App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationDrawerApp(),
    );
  }
}

class NavigationDrawerApp extends StatefulWidget {
  @override
  _NavigationDrawerAppState createState() => _NavigationDrawerAppState();
}

class _NavigationDrawerAppState extends State<NavigationDrawerApp> {
  Widget _selectedScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation Drawer')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                setState(() => _selectedScreen = HomeScreen());
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                setState(() => _selectedScreen = ProfileScreen());
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                setState(() => _selectedScreen = SettingsScreen());
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _selectedScreen,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen'));
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Settings Screen'));
  }
}
