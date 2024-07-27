// ignore_for_file: public_member_api_docs, sort_constructors_first
class SignUpRespondModel {}

class SuccessRespond extends SignUpRespondModel {
  final String token;
  SuccessRespond({
    required this.token,
  });
}

class BadRequest extends SignUpRespondModel {
  final String message;
  BadRequest({
    required this.message,
  });
}

class ErrorRespond extends SignUpRespondModel {
  final String message;
  ErrorRespond({
    required this.message,
  });
}

class ExceptionRespond extends SignUpRespondModel {
  final String message;
  ExceptionRespond({
    required this.message,
  });
}
