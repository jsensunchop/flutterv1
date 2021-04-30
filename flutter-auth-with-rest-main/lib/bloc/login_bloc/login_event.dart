part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
  final String email;
  final String password;
  final String type;

  const LoginButtonPressed({
    @required this.email,
    @required this.password,
    @required this.type,
  });

  @override
  List<Object> get props => [email, password, type];

  @override
  String toString() =>
      'LoginButtonPressed { email: $email, password: $password, type: $type }';
}
