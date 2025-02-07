import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatelessWidget {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Principal input field with custom border color
            TextField(
              controller: principalController,
              decoration: InputDecoration(
                labelText: 'Principal',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF004A83)), // Set border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF004A83)), // Set border color on focus
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10), // Added spacing between fields
            // Rate of interest input field with custom border color
            TextField(
              controller: rateController,
              decoration: InputDecoration(
                labelText: 'Rate of Interest',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF004A83)), // Set border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF004A83)), // Set border color on focus
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10), // Added spacing between fields
            // Time input field with custom border color
            TextField(
              controller: timeController,
              decoration: InputDecoration(
                labelText: 'Time (in years)',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF004A83)), // Set border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF004A83)), // Set border color on focus
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double principal = double.parse(principalController.text);
                double rate = double.parse(rateController.text);
                double time = double.parse(timeController.text);
                double simpleInterest = (principal * rate * time) / 100;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Simple Interest'),
                    content: Text('Simple Interest: Rs. ${simpleInterest.toStringAsFixed(2)}'), // Displaying Rs.
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Calculate Simple Interest'),
            ),
          ],
        ),
      ),
    );
  }
}
