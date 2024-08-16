import 'package:dio/dio.dart';
import 'package:rideshare/model/authentication/change_password_model.dart';
import 'package:rideshare/service/service.dart';

class ChangePasswordService extends Service {
  ChangePasswordService(super.dio);

  Future<Response> changePasswordService(
      ChangePasswordModel userPassword) async {
    try {
      Map<String, dynamic> passwordMap = userPassword.toMap();

      response = await dio.post('$baseUrl/api/v1/users/change-password',
          data: passwordMap);
      return response;
    } on DioException catch (e) {
      throw e;
    }
  }
}
