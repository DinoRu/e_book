part of 'my_user_bloc.dart';

sealed class MyUserEvent extends Equatable {
  const MyUserEvent();
}


class GetMyUser extends MyUserEvent {
  final String userId;
  const GetMyUser({required this.userId});

  @override
  // TODO: implement props
  List<Object?> get props => [userId];

}