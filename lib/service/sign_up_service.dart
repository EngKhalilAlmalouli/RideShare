import 'package:dio/dio.dart';
import 'package:rideshare/const.dart';
import 'package:rideshare/model/sign_up_model.dart';
import 'package:rideshare/model/sign_up_respond_model.dart';

Future<SignUpRespondModel> signUpService(SignUpModel user) async {
  try {
    Map<String, dynamic> userMap = user.toMap();

    Dio dio = Dio();
    Response response =
        await dio.post('$baseUrl/api/v1/auth/register', data: userMap);

    if (response.statusCode == 200) {
      token = response.data['body']['token'];
      return SuccessRespond(token: response.data['body']['token']);
    } else {
      return ErrorRespond(message: 'message');
    }
  } on DioException catch (e) {
    return ExceptionRespond(message: e.message.toString());
  }
}
