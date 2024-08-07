import 'package:dio/dio.dart';
import 'package:rideshare/model/error/exception.dart';
import 'package:rideshare/model/sign_up_model.dart';
import 'package:rideshare/service/service.dart';

class SignUpService extends Service {
  SignUpService(super.dio);
  Future<Response> signUpService(SignUpModel user) async {
    try {
      Map<String, dynamic> userMap = user.toMap();

      response = await dio.post('$baseUrl/api/v1/auth/register', data: userMap);

      return response;
    } on DioException catch (e) {
      if (e.response!.data['message'] == 'username already in use') {
        throw UsernameAlreadyInUse();
      } else if (e.response!.data['message'] is List) {
        List<String> messages =
            List<String>.from(e.response!.data['message'][0].split(','));
        throw BadRequestSignUp(messages: messages);
      } else {
        throw e;
      }
    }
  }
}
