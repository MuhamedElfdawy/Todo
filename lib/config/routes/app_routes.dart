import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/screens/add_task_screen.dart';
import 'package:todo_app/feature/presentation/screens/home_screen.dart';
import 'package:todo_app/features/auth/data/data_sources/auth_api_service.dart';
import 'package:todo_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:todo_app/features/auth/domain/use_cases/auth_use_case.dart';
import 'package:todo_app/features/auth/presentation/cubit/auth/auth_cubit.dart';
import 'package:todo_app/features/auth/presentation/cubit/body_toggle_cubit/toggle_cubit.dart';
import 'package:todo_app/features/auth/presentation/screens/login_screen.dart';
import 'package:todo_app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:todo_app/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:todo_app/features/profile/domain/use_cases/profile_use_case.dart';
import 'package:todo_app/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:todo_app/features/profile/presentation/screen/profile_screen.dart';
import 'package:todo_app/feature/presentation/screens/splash_screen.dart';
import 'package:todo_app/feature/presentation/screens/task_details_screen.dart';
import 'package:todo_app/features/auth/presentation/screens/register_screen.dart';



class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Constants.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Constants.loginScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => BodyToggleCubit(),),
                BlocProvider(create: (context) => AuthCubit(authUseCase: AuthUseCase(AuthRepositoryImpl(authDataSource: AuthDataSource(dio: Dio())))),)
              ],
              child: const LoginScreen(),
          ),
        );
      case Constants.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(
                authUseCase: AuthUseCase(AuthRepositoryImpl(
                    authDataSource: AuthDataSource(
                        dio: Dio())))),
            child: const RegisterScreen(),
          ),
        );
      case Constants.homeScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
              providers: [
            BlocProvider(create: (context) => AuthCubit(authUseCase: AuthUseCase(AuthRepositoryImpl(authDataSource: AuthDataSource(dio: Dio())))),)
          ],
              child: const HomeScreen()
          ),
        );
      case Constants.profileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => ProfileCubit(profileUseCase: ProfileUseCase(repository: ProfileRepositoryImpl(profileDataSource: ProfileDataSource(dio: Dio())))),
              child: const ProfileScreen(),
          ),
        );
      case Constants.addTaskScreen:
        return MaterialPageRoute(
          builder: (_) => const AddTaskScreen(),
        );
      case Constants.taskDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const TaskDetailsScreen(),
        );
      default:
        return null;
    }
  }
}



