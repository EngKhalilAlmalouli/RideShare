// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChangePasswordRespond {}

class SuccessChangingResponse extends ChangePasswordRespond {
  final String? message;
  SuccessChangingResponse({
    this.message,
  });
}
