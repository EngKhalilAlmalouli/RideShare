import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rideshare/model/sign_up_model.dart';
import 'package:rideshare/model/sign_up_respond_model.dart';
import 'package:rideshare/service/sign_up_service.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpUser>((event, emit) async {
      var data = await signUpService(event.user);
      if (data is SuccessRespond) {
        emit(Success());
      } else if (data is ErrorRespond) {
        emit(Error(message: data.message));
      } else if (data is ExceptionRespond) {
        emit(Exception(message: data.message));
      } else {
        emit(Loading());
      }
    });
  }
}
