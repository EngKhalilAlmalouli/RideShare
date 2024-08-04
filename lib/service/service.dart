import 'package:dio/dio.dart';

class Service {
  final Dio dio;
  late Response response;
  String baseUrl = "https://rideshare.devscape.online";
  Service(this.dio);
}
