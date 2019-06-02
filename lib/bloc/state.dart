import 'package:ramdemo/models/login_response.dart';

abstract class LoginState {}

class LoginStateDefault extends LoginState {
  @override
  String toString() => 'LoginStateDefault';
}

class LoginStateLoading extends LoginState {
  @override
  String toString() => 'LoginStateLoading';
}

class LoginStateError extends LoginState {
  final String message;

  LoginStateError({this.message});

  @override
  String toString() => 'LoginStateError';
}

class LoginStateSuccess extends LoginState {
  final LoginResponse data;
  LoginStateSuccess({this.data});

  @override
  String toString() => 'LoginStateSuccess';
}
