import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuotesPage(),
    );
  }
}

class QuotesPage extends StatefulWidget {
  @override
  _QuotesPageState createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  int index = 0;

  List<String> quotes = [
    "Believe in yourself",
    "Never give up",
    "Stay positive",
    "Work hard dream big",
    "Success is coming"
  ];

  void nextQuote() {
    setState(() {
      index = (index + 1) % quotes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daily Quotes")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quotes[index],
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: nextQuote,
              child: Text("Next Quote"),
            )
          ],
        ),
      ),
    );
  }
}