import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(  // #1 Ito yung main app. Dito nagsisimula ang Flutter app at dito naka-set yung theme at first screen.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(  // #2 Ito yung layout ng buong screen. Parang frame ng app.
    appBar: AppBar( // #3 Ito yung nasa taas ng app na may title.
      title: const Text('All Widgets')
    ), 
    body: Center(  // #7 Pinapagitna nito yung laman ng screen.
      child: Container(  // #8 Isang box na lalagyan ng widgets at may padding.
        padding: const EdgeInsets.all(20),
        child: Column(  // #6 Inaayos nito yung widgets pababa.
          children: [
            Row(  // #5 Inaayos nito yung widgets pahalang.
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),  // #4 Ito yung text na lalabas sa screen.
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
