import 'package:dio/dio.dart';
import 'package:rideshare/const.dart';
import 'package:rideshare/model/Login_model.dart';
import 'package:rideshare/model/login_respond.dart';
import 'package:rideshare/service/service.dart';

class LoginService extends Service {
  LoginService(super.dio);
  Future<LoginRespond> loginService(LoginModel user) async {
    try {
      Options options = Options(
        headers: {
          'Accept': '*/*',
          'Content-Type': 'application/json',
        },
      );
      response = await dio.post(
        "$baseUrl/api/v1/auth/authenticate",
        data: user.toMap(),
        options: options,
      );

      if (response.statusCode == 200) {
        token = response.data['body']['token'];
        print(response.data['body']['token']);
        return LoginToken.fromMap(response.data);
      } else {
        return LoginErrorRespond(message: 'lol');
      }
    } on DioException catch (e) {
      return LoginErrorRespond(message: e.message.toString());
    }
  }
}
