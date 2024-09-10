// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rideshare/model/Settings/change_password_model.dart';
import 'package:rideshare/model/Settings/change_password_respond.dart';
import 'package:rideshare/service/settings/change_password_service.dart';

class ChangePasswordRepo {
  final ChangePasswordService service;
  ChangePasswordRepo({
    required this.service,
  });

  Future<ChangePasswordRespond> changePasswordRepo(
      ChangePasswordModel passwordRepo) async {
    try {
      var data = await service.changePasswordService(passwordRepo);
      print("return SuccessChangingResponse(message: data.data);");
      return SuccessChangingResponse(message: data.data);
    } on DioException catch (e) {
      print(e.response!.data);
      if (e.response!.data["status"] == "BAD_REQUEST") {
        print("e.response!.data");
        print(e.response!);
        return BadRequest.fromMap(e.response!.data);
      } else {
        print("else ChangePasswordRepo Exception");
        return BadRequest(
            message: "message",
            status: "status",
            localDateTime: "localDateTime");
      }
    }
  }
}
