// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class UsernameAlreadyInUse implements Exception {}

class BadRequestSignUp implements Exception {
  List<String> messages;
  BadRequestSignUp({
    required this.messages,
  });
}
