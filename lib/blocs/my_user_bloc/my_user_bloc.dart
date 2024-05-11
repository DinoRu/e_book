import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:user_repository/user_repository.dart';

part 'my_user_event.dart';
part 'my_user_state.dart';

class MyUserBloc extends Bloc<MyUserEvent, MyUserState> {
  final UserRepository _userRepository;

  MyUserBloc({
    required UserRepository myUserRepository,
}) : _userRepository = myUserRepository,
        super(const MyUserState.loading()) {
    on<GetMyUser>((event, emit) async {
      try {
        MyUser user = await _userRepository.getMyUser(event.userId);
        emit(MyUserState.success(user));
      } catch (e) {
        log(e.toString());
        emit(const MyUserState.failure());
      }
    });
  }
}
