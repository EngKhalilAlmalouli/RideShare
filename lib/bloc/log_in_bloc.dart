import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:rideshare/model/Login_model.dart';
import 'package:rideshare/model/login_respond.dart';
import 'package:rideshare/service/login_service.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final LoginService loginService;
  LogInBloc(this.loginService) : super(LogInInitial()) {
    on<Login>((event, emit) async {
      LoginRespond data = await loginService.loginService(event.user);
      if (data is LoginToken) {
        emit(LoginSuccess(token: data.body.token));
      } else if (data is LoginErrorRespond) {
        emit(LoginException(exceptionMessage: data.message));
      } else {
        emit(LoginLoading());
      }
    });
  }
}
