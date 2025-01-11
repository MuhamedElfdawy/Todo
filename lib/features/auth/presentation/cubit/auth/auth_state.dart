part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class AuthLoading extends AuthState {}
final class AuthSuccess extends AuthState {
  final UserEntity user;

  AuthSuccess({required this.user});
}
final class AuthError extends AuthState {
  final String msg;

  AuthError({required this.msg});
}
final class AuthLogout extends AuthState {}
