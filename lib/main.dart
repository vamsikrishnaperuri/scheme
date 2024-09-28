import 'package:flutter/material.dart';
import 'package:scheme/splash%20screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Set the initial route to splash screen
      routes: {
        '/': (context) => const Splash(),
        '/home': (context) => const HomeScreen(), // Define your home screen route
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF6600), // Orange
        title: const Text('Akasa Air'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top Banner
            Container(
              color: const Color(0xFFFF6600), // Orange
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                children: [
                  Text(
                    'Exclusive flight deals on AkasaAir.com and App',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Login now and get up to 20% off. Use code: FLYMORE',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Book a flight section
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF0F0F0), // Light Grey
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text(
                    'Book a flight',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Plan your next trip with us',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.flight_takeoff, color: Color(0xFF6F2596)), // Purple icon
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.check_circle_outline, color: Color(0xFF6F2596)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.access_time, color: Color(0xFF6F2596)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.manage_accounts, color: Color(0xFF6F2596)),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFFF6600), // Orange
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flight_takeoff),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
