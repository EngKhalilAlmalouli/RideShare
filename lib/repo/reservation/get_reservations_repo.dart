// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rideshare/model/reservation/get_reservations_model.dart';
import 'package:rideshare/service/reservation/get_reservations_service.dart';

class GetReservationsRepo {
  final GetReservationsService getReservationsService;
  GetReservationsRepo({
    required this.getReservationsService,
  });

  Future<GetReservationsModel> getReservationsRepo() async {
    try {
      var data = await getReservationsService.getReservationsService();
      return SuccessGettingReservations.fromMap(data.data);
    } on DioException catch (e) {
      return ExceptionGettingReservations(message: e.response!.data);
    }
  }
}
