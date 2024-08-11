part of 'change_password_bloc.dart';

@immutable
sealed class ChangePasswordState {}

final class ChangePasswordInitial extends ChangePasswordState {}

class SuccessChanging extends ChangePasswordState {}

class BadRequestChanging extends ChangePasswordState {}

class ErrorChanging extends ChangePasswordState {}

class ExceptionChanging extends ChangePasswordState {}

class LoadingChanging extends ChangePasswordState {}
