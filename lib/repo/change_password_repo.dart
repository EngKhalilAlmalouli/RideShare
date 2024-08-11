// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rideshare/model/change_password_model.dart';
import 'package:rideshare/model/change_password_respond.dart';
import 'package:rideshare/service/change_password_service.dart';

class ChangePasswordRepo {
  final ChangePasswordService service;
  ChangePasswordRepo({
    required this.service,
  });

  Future<ChangePasswordRespond> changePasswordRepo(
      ChangePasswordModel passwordRepo) async {
    try {
      var date = await service.changePasswordService(passwordRepo);
      return SuccessChangingResponse(
          message: 'The Password Changed successfully');
    } catch (e) {
      return SuccessChangingResponse(message: 'There is an error');
    }
  }
}
