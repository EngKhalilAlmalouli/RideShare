// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rideshare/model/authentication/change_password_model.dart';
import 'package:rideshare/model/authentication/change_password_respond.dart';
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
      return SuccessChangingResponse(message: data.data);
    } catch (e) {
      return SuccessChangingResponse(message: 'There is an error');
    }
  }
}
