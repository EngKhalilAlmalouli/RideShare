// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'log_in_bloc.dart';

@immutable
sealed class LogInState {}

final class LogInInitial extends LogInState {}

class LoginSuccess extends LogInState {
  String token;
  LoginSuccess({
    required this.token,
  });
}

class LoginError extends LogInState {
  String message;
  LoginError({
    required this.message,
  });
}

class LoginException extends LogInState {
  String exceptionMessage;
  LoginException({
    required this.exceptionMessage,
  });
}

class LoginLoading extends LogInState {}
