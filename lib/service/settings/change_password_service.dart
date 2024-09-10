import 'package:dio/dio.dart';
import 'package:rideshare/model/Settings/change_password_model.dart';
import 'package:rideshare/service/service.dart';

class ChangePasswordService extends Service {
  ChangePasswordService(super.dio);

  Future<Response> changePasswordService(
      ChangePasswordModel userPassword) async {
    try {
      Map<String, dynamic> passwordMap = userPassword.toMap();

      response = await dio.put(
        '$baseUrl/api/v1/users/change-password',
        options: options,
        data: passwordMap,
      );
      return response;
    } on DioException catch (e) {
      print("on DioException catch (e) -----------------------------------");
      print(e);
      rethrow;
    }
  }
}
