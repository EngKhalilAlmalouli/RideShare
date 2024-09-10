import 'package:dio/dio.dart';
import 'package:rideshare/const.dart';
import 'package:rideshare/service/service.dart';

class GetReservationsService extends Service {
  GetReservationsService(super.dio);

  Future<Response> getReservationsService() async {
    try {
      response = await dio.get(
          "$baseUrl/api/v1/reservation/by-client-id/$myUserId",
          options: options);
      return response;
    } on DioException {
      rethrow;
    }
  }
}
