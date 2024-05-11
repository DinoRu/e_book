part of 'auth_bloc.dart';

enum AuthStatus {authenticated, unauthenticated, unknown}

class AuthState extends Equatable {
  final User? user;
  final AuthStatus status;
  const AuthState._({
    this.user,
    this.status = AuthStatus.unknown
  });

  ///Pas d'information a propos de [AuthStatus] de l'utilisateur actuel
  const AuthState.unknown() : this._();

  /// Utilisateur actuel est [authenticate]
  ///
  /// Prends les proprietes de [MyUser] representant l'utilisateur actuel [authenticated]
  const AuthState.authenticated(User user) : this._(status: AuthStatus.authenticated, user: user);

  /// Utilisateur n'est pas authentifié [unauthenticated]
  const AuthState.unauthenticated() : this._(status: AuthStatus.unauthenticated);

  @override
  // TODO: implement props
  List<Object?> get props => [user, status];
}