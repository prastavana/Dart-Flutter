import 'package:flutter/material.dart';
import 'screens/arithmetic_screen.dart';
import 'screens/simple_interest_screen.dart';
import 'screens/area_of_a_circle_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Color(0xFF0C2E4D),  // Set title color to #0c2e4d
            fontWeight: FontWeight.bold,  // Make the title bold
          ),
        ),
        backgroundColor: Colors.white,  // Set AppBar background to white for contrast
      ),
      backgroundColor: Color(0xFFCFECF7),  // Set the background color to #cfecf7
      body: Center(  // Use Center to ensure the whole column is centered
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Center vertically
            crossAxisAlignment: CrossAxisAlignment.center,  // Center horizontally
            children: [
              // Widget styled like a button for Arithmetic
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArithmeticScreen()),
                  );
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Color(0xFF8CA6DB),  // Set widget color to #8ca6db
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                    width: MediaQuery.of(context).size.width * 0.8, // Button width 80% of screen
                    child: Text(
                      'Arithmetic',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),  // Increased space between buttons
              // Widget styled like a button for Simple Interest
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SimpleInterestScreen()),
                  );
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Color(0xFF8CA6DB),  // Set widget color to #8ca6db
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                    width: MediaQuery.of(context).size.width * 0.8, // Button width 80% of screen
                    child: Text(
                      'Simple Interest',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),  // Increased space between buttons
              // Widget styled like a button for Area of Circle
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AreaOfCircleScreen()),
                  );
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Color(0xFF8CA6DB),  // Set widget color to #8ca6db
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                    width: MediaQuery.of(context).size.width * 0.8, // Button width 80% of screen
                    child: Text(
                      'Area of Circle',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
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
