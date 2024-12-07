import "package:flutter/material.dart";


class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _Calenderstate();
}

class _Calenderstate extends State<Calender>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ini calender'),
      ),
    );
  }
  
}