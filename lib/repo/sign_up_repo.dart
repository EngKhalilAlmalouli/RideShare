// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:rideshare/model/error/exception.dart';
import 'package:rideshare/model/sign_up_model.dart';
import 'package:rideshare/model/sign_up_respond_model.dart';
import 'package:rideshare/service/sign_up_service.dart';

class SignUpRepo {
  final SignUpService signUpService;
  SignUpRepo({
    required this.signUpService,
  });

  Future<SignUpRespondModel> SignUp(SignUpModel user) async {
    try {
      var data = await signUpService.signUpService(user);
      return SuccessRespond(token: data.data['token']);
    } on UsernameAlreadyInUse catch (e) {
      return ErrorRespond(message: 'username already in use');
    } on BadRequestSignUp catch (e) {
      return BadRequest(message: e.messages);
    } catch (e) {
      return ExceptionRespond(message: e.toString());
    }
  }
}
