import 'package:dio/dio.dart';
import 'package:rideshare/model/error/exception.dart';
import 'package:rideshare/service/service.dart';

class GetAllBicycleService extends Service {
  GetAllBicycleService(super.dio);
  Future<Response> getAllBicycleservice() async {
    try {
      response = await dio.get("$baseUrl/api/v1/bicycle", options: options);
      if (response.data["body"].isEmpty) {
        throw EmptyBicycleRespons;
      } else {
        return response;
      }
    } on DioException {
      rethrow;
    }
  }
}
