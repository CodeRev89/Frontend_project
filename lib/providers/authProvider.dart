import 'package:flutter/material.dart';
import 'package:travel_app/models/users.dart';

class AuthProvider extends ChangeNotifier {
  String token = "";
  late Users user;
}