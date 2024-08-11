import 'package:rideshare/const.dart';
import 'package:rideshare/model/error/exception.dart';
import 'package:rideshare/model/sign_up_model.dart';
import 'package:rideshare/model/sign_up_respond_model.dart';
import 'package:rideshare/service/shared_prefrences/shared.dart';
import 'package:rideshare/service/sign_up_service.dart';

class SignUpRepo {
  final SignUpService signUpService;
  SignUpRepo({
    required this.signUpService,
  });

  Future<SignUpRespondModel> signUp(SignUpModel user) async {
    try {
      var data = await signUpService.signUpService(user);

      saveAuthStatus(true);
      token = data.data['body']['token'];
      print(data.data['body']['token']);
      return SuccessRespond(token: data.data['body']['token']);
    } on UsernameAlreadyInUse {
      return ErrorRespond(message: 'username already in use');
    } on BadRequestSignUp catch (e) {
      return BadRequest(message: e.messages);
    } catch (e) {
      return ExceptionRespond(message: e.toString());
    }
  }
}
