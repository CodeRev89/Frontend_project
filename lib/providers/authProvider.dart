import 'package:flutter/material.dart';
import 'package:travel_app/models/users.dart';
import 'package:travel_app/services/auth_services.dart';

class AuthProvider extends ChangeNotifier {
  // late Users user;
  // Users user = Users(userName: "",passWord: '') ; 
  
   String token ="";
  
  void signup(Users user) async{
   token = await AuthServices().signup(user);
  }


  // String token = "";
  // late Users user;
}