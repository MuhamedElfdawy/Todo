import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/cubit/body_toggle_cubit/toggle_cubit.dart';
import 'package:todo_app/feature/presentation/screens/add_task_screen.dart';
import 'package:todo_app/feature/presentation/screens/home_screen.dart';
import 'package:todo_app/feature/presentation/screens/login_screen.dart';
import 'package:todo_app/feature/presentation/screens/profile_screen.dart';
import 'package:todo_app/feature/presentation/screens/register_screen.dart';
import 'package:todo_app/feature/presentation/screens/splash_screen.dart';
import 'package:todo_app/feature/presentation/screens/task_details_screen.dart';

// final loginDataSource = LoginDataSource();
// final loginRepository = LoginRepositoryImp1(loginDataSource);
// final loginUseCase = LoginUseCase(repo: loginRepository);

class AppRouter {
  // late TodoCubit todoCubit;

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
                // BlocProvider(create: (context) => LoginCubit(loginUseCase),),
                BlocProvider(create: (context) => BodyToggleCubit(),),
              ],
              child: const LoginScreen(),
          ),
        );
      case Constants.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case Constants.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Constants.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
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



