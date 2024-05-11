import 'package:equatable/equatable.dart';
import 'package:user_repository/src/models/models.dart';

import '../../user_repository.dart';

class MyUser extends Equatable {
  final String userId;
  final String email;
  final String name;
  final String? picture;

  const MyUser({
    required this.userId,
    required this.email,
    required this.name,
    this.picture
 });

  static const empty = MyUser(
      userId: "",
      email: "",
      name: "",
      picture: ""
  );

  MyUser copyWith({
      String? userId,
      String? email,
      String? name,
      String? picture
    }) {
    return MyUser(
        userId: userId ?? this.userId ,
        email: email ?? this.email,
        name: name ?? this.name,
        picture: picture ?? this.picture
    );
  }

  bool get isEmpty => this == MyUser.empty;

  bool get isNotEmpty => this != MyUser.empty;

  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: userId,
      name: name,
      email: email,
      picture: picture,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
        userId: entity.userId,
        name: entity.name,
        email: entity.email,
        picture: entity.picture
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return "MyUser: $userId, $email, $name, $picture";
  }


  @override
  // TODO: implement props
  List<Object?> get props => [userId, email, name, picture];
}