import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegisterUserModel {
  final String email;
  final String name;
  final double phone;
  final String password;
  RegisterUserModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'phone': phone,
      'password': password,
    };
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserModel(
      email: map['email'] as String,
      name: map['name'] as String,
      phone: map['phone'] as double,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) =>
      RegisterUserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
