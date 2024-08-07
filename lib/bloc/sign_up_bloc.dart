import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rideshare/model/sign_up_model.dart';
import 'package:rideshare/model/sign_up_respond_model.dart';
import 'package:rideshare/repo/sign_up_repo.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepo signUpRepo;
  SignUpBloc(this.signUpRepo) : super(SignUpInitial()) {
    on<SignUpUser>((event, emit) async {
      var data = await signUpRepo.signUp(event.user);
      if (data is SuccessRespond) {
        emit(Success());
      } else if (data is ErrorRespond) {
        emit(Error(message: data.message));
      } else if (data is BadRequest) {
        emit(Exception(message: data.message));
      } else if (data is ExceptionRespond) {
        print('error bloc layer');
        print(data.message.toString());
        emit(Error(message: ' ${data.message}'));
      } else {
        emit(Loading());
      }
    });
  }
}
