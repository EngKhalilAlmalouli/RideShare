import 'package:dio/dio.dart';
import 'package:rideshare/const.dart';

class Service {
  final Dio dio;
  late Response response;
  String baseUrl = "https://rideshare.devscape.online";
  Service(this.dio);
  Options options = Options(
    headers: {
      'Accept': '*/*',
      'Authorization': 'Bearer $token',
    },
  );
}
