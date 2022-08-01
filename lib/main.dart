// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Travel App'), centerTitle: true,
        backgroundColor: Colors.blueAccent, // keep here until further changes
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/applogo.png",
                width: 30,
                height: 30,
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer( child: ListView(
        
        children: [
          ListTile(
            leading: Icon(Icons.mode),
            title: Text('Register'),
            onTap: () {GoRouter.of(context).push('/signup');},
            
          ),
          ListTile(
            leading: Icon(Icons.login_outlined),
            title: Text('Login'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      )),
    );

      
    
  }
}
