part of 'auth_bloc.dart';


sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}


class AuthUserChange extends AuthEvent {
  const AuthUserChange(this.user);

  final User? user;
}