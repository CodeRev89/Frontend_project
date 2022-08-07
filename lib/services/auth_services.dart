import 'package:dio/dio.dart';
import 'package:travel_app/models/users.dart';
import 'package:travel_app/services/Client.dart';
import 'package:dio/dio.dart';

class AuthServices {
  final Dio _dio = Dio();

  Future<String> signup(Users user) async {
    String token = "";
    try{
    Response res = await Client.dio.post("register/", data: user.toJson());
    token = res.data['token'];
    print(token);
    }
    on DioError catch(error){
      print(error);
    }
    
    return token;
    //print(res.data);
  }

}



//http://10.0.2.2:8000