import 'package:flutter/material.dart';
import 'package:navigation_bar_demo/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab and Navigation',
      theme: ThemeData(),
      home: const TabBarC(),
    );
  }
}

class TabBarC extends StatelessWidget {
  const TabBarC({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: midnight,
        appBar: AppBar(
          title: const Text(
            "Tab Bar View",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: midnight),
          ),
          backgroundColor: sunburst,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.ac_unit, color: midnight)),
              Tab(icon: Icon(Icons.sunny, color: midnight)),
              Tab(icon: Icon(Icons.cloud, color: midnight)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
                child: Text("Snow",
                    style: TextStyle(
                      fontSize: 56,
                      color: sunburst,
                      fontWeight: FontWeight.bold,
                    ))),
            Center(
                child: Text("Sunny",
                    style: TextStyle(
                      fontSize: 56,
                      color: sunburst,
                      fontWeight: FontWeight.bold,
                    ))),
            Center(
                child: Text("Cloudy",
                    style: TextStyle(
                      fontSize: 56,
                      color: sunburst,
                      fontWeight: FontWeight.bold,
                    ))),
          ],
        ),
      ),
    );
  }
}
