import 'package:dio/dio.dart';
import 'package:rideshare/const.dart';
import 'package:rideshare/model/Login_model.dart';
import 'package:rideshare/model/login_respond.dart';

Future<LoginRespond> loginService(LoginModel user) async {
  try {
    Dio dio = Dio();
    Options options = Options(
      headers: {
        'Accept': '*/*',
        'Content-Type': 'application/json',
      },
    );
    Response response = await dio.post(
      "$baseUrl/api/v1/auth/authenticate",
      data: user.toMap(),
      options: options,
    );
    print('response');
    print(response);

    if (response.statusCode == 200) {
      token = response.data['body']['token'];
      return LoginToken.fromMap(response.data);
    } else {
      print(response);
      return LoginErrorRespond(message: 'lol');
    }
  } on DioException catch (e) {
    print('ecxeption');
    return LoginErrorRespond(message: e.message.toString());
  }
}
