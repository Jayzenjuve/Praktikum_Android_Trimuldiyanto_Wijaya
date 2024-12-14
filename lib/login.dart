import 'package:aplikasi/api/service.dart';
import 'package:aplikasi/dashboard.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final _formState = GlobalKey<FormState>();
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();

  Future _masuk() async {
    var response = await DataService().LoginService(_user.text, _pass.text);
  if (response == true){
    Get.offAll(Dashboard());
  } else {
    Get.defaultDialog(
      title: "User/Pass Salah",
    );
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Aplikasi',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.purple])),
          ),
          leading: IconButton(
            onPressed: () {
              print('ini adalah tombol menu');
            },
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {
                print('ini setting');
              },
              icon: const Icon(Icons.settings),
              color: Colors.white,
            ),
            IconButton(
                onPressed: () {
                  print('ini pencarian');
                },
                icon: const Icon(Icons.search),
                color: Colors.white)
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Form(
            key: _formState,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://cdn.7tv.app/emote/01GESA72SG000B6WHR50T3PZD4/4x.webp'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == ''){
                      return "Username tidak boleh kosong";
                    }
                    return null;
                  },
                  controller: _user,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == ''){
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                  controller: _pass,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock)),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formState.currentState!.validate()){
                      _masuk();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.black,
                    elevation: 5,
                  ),
                  child: Text(
                    'MASUK',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
