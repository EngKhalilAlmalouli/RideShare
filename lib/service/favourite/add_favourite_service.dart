import 'package:dio/dio.dart';
import 'package:rideshare/model/Settings/change_password_respond.dart';
import 'package:rideshare/service/service.dart';

class AddFavouriteService extends Service {
  AddFavouriteService(super.dio);

  Future<Response> addFavouriteService(int id) async {
    try {
      response = await dio.post("$baseUrl/api/v1/favourite-bicycles",
          options: options, data: {"bicycleId": id});
      print("response");
      print(response);
      return response;
    } on DioException catch (e) {
      print("DioException");
      print(e.response!);
      if (e.response!.data["status"] == "BAD_REQUEST") {
        throw BadRequest.fromMap(e.response!.data);
      } else {
        rethrow;
      }
    }
  }
}
