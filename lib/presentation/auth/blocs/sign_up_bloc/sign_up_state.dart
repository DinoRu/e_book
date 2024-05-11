part of 'sign_up_bloc.dart';

sealed class SignUpState extends Equatable {
  const SignUpState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class SignUpInitial extends SignUpState {}

class SignUpSuccess extends SignUpState {}
class SignUpProcess extends SignUpState {}
class SignUpFailure extends SignUpState {}
