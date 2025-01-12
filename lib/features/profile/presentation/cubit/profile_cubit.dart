import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/features/profile/domain/entities/profile_entity.dart';
import 'package:todo_app/features/profile/domain/use_cases/profile_use_case.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileUseCase profileUseCase;
  ProfileCubit({required this.profileUseCase}) : super(ProfileInitial()) {
    fetchProfileData();
  }

  Future<void> fetchProfileData() async {
    emit(ProfileLoading());
    try {
      final result = await profileUseCase();
      result.fold(
        (failure) => emit(ProfileError(msg: failure)),
        (profile) => emit(ProfileLoaded(profile: profile)),
      );
    } catch (e) {
      emit(ProfileError(msg: 'Unexpected error occurred: $e'));
    }
  }
}
