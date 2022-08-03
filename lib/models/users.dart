import 'package:json_annotation/json_annotation.dart';

part "users.g.dart";

@JsonSerializable()
class Users {
  int? id;
  String userName;
  int passWord;

  Users ({this.id, required this.userName, required this.passWord});

factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);

}
