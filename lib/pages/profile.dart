import "package:flutter/material.dart";


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _Profilestate();
}

class _Profilestate extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ini profile'),
      ),
    );
  }
  
}