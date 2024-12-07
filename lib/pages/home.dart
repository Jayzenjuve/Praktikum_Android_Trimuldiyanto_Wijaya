import "package:flutter/material.dart";


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Homestate();
}

class _Homestate extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
  
}