// import 'package:bloc/bloc.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:meta/meta.dart';
// import 'package:todo_app/feature/domain/entities/login_entity.dart';
// import 'package:todo_app/feature/domain/use_cases/login_use_case.dart';
//
// part 'login_state.dart';
//
// class LoginCubit extends Cubit<LoginState> {
//    LoginUseCase loginUseCase;
//   LoginCubit(this.loginUseCase) : super(LoginInitial());
//
//   Future<void> login(LoginEntity user)
//  async {
//     try{
//       final token = await loginUseCase.call(user);
//
//       emit(LoginSuccess(token!));
//     } catch (e){
//       debugPrint(e.toString());
//       emit(LoginFailure(e.toString()));
//     }
//   }
// }
