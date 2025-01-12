part of 'profile_cubit.dart';

@immutable
sealed class ProfileState  {
  const ProfileState();
}

final class ProfileInitial extends ProfileState {}
final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {
  final ProfileEntity profile;
  const ProfileLoaded({required this.profile});
}

final class ProfileError extends ProfileState {
  final String msg;
  const ProfileError({required this.msg});
}
