import 'package:dio/dio.dart';
import 'package:rideshare/service/shared_prefrences/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service {
  final Dio dio;
  late Response response;
  String baseUrl = "https://rideshare.devscape.online";
  Service(this.dio);
  Options options = Options(
    headers: {
      'Accept': '*/*',
      'Authorization':
          'Bearer ${storage.get<SharedPreferences>().getString("token")}',
    },
  );
}
