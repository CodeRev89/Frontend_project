import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Welcome'), centerTitle: true,
        backgroundColor: Colors.blueAccent, // keep here until further changes
      ),

      
      
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/applogo.png",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.mode),
            title: Text('Register'),
            onTap: () {
              GoRouter.of(context).push('/signup');
            },
          ),
          ListTile(
            leading: Icon(Icons.login_outlined),
            title: Text('Login'),
            onTap: () {GoRouter.of(context).push("/loginpage");} ,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {GoRouter.of(context).push("/settings");},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('contact us'),
            onTap: () {GoRouter.of(context).push("/contact");},
          ),
        ],
      )),
    );
  }
}
