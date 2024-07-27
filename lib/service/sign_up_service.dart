import 'package:dio/dio.dart';
import 'package:rideshare/const.dart';
import 'package:rideshare/model/sign_up_model.dart';
import 'package:rideshare/model/sign_up_respond_model.dart';

Future<SignUpRespondModel> signUpService(SignUpModel user) async {
  print('start');
  print('$baseUrl/api/v1/auth/register');
  try {
    Map<String, dynamic> userMap = user.toMap();
    print(userMap);

    Dio dio = Dio();
    Response response = await dio.post('$baseUrl/api/v1/auth/register', data: {
      "firstName": user.firstName,
      "lastName": user.lastName,
      "phone": user.phone,
      "username": user.username,
      "birthDate": user.birthDate,
      "password": user.password,
      "confirmPassword": user.confirmPassword,
    });

    print('start 2');

    if (response.statusCode == 200) {
      print(response.data);
      return SuccessRespond(token: response.data['body']['token']);
    } else {
      return ErrorRespond(message: 'message');
    }
  } on DioException catch (e) {
    return ExceptionRespond(message: e.message.toString());
  }
}
