import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/core/network/token.dart';
import 'package:todo_app/features/auth/domain/entities/Auth_entity.dart';
import 'package:todo_app/features/auth/domain/use_cases/auth_use_case.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthUseCase authUseCase;

  AuthCubit({required this.authUseCase}) : super(AuthInitial());

  Future<void> login({required String phone, required String password}) async{
    emit(AuthLoading());
    final result = await authUseCase.login(phone, password);
    result.fold(
            (failure) => emit(AuthError(msg: failure)),
            (user) => emit(AuthSuccess(user: user))
    );
  }

  Future<void> register ({
    required String name,
    required String phone,
    required String password,
    required int experience,
    required String address,
    required String level,
}) async {
    final result = await authUseCase.register(
        name: name,
        phone: phone,
        password: password,
        experience: experience,
        address: address,
        level: level,
    );
    result.fold(
            (failure) => emit(AuthError(msg: failure)),
            (user) => emit(AuthSuccess(user: user))
    );
  }

  Future<void> logout(String token) async{
    emit(AuthLoading());
    final result = await authUseCase.logout(token: token);
    result.fold((failure) => emit(AuthError(msg: failure)),
            (_) {
              emit(AuthLogout());
              clearToken();
            }
    );
  }

}
