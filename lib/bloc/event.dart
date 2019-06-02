abstract class LoginEvent {}

class LoginButtonPressedEvent extends LoginEvent {
  final String username;
  final String password;

  LoginButtonPressedEvent({this.username,this.password});
  @override
  String toString() => 'LoginButtonPressedEvent';
}