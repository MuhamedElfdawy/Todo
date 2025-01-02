import 'package:todo_app/feature/presentation/screens/add_task_screen.dart';
import 'package:todo_app/feature/presentation/screens/home_screen.dart';
import 'package:todo_app/feature/presentation/screens/login_screen.dart';
import 'package:todo_app/feature/presentation/screens/profile_screen.dart';
import 'package:todo_app/feature/presentation/screens/register_screen.dart';
import 'package:todo_app/feature/presentation/screens/splash_screen.dart';
import 'package:todo_app/feature/presentation/screens/start_screen.dart';

class Routes
{
  static const String initialRoute = '/';
  static const String startRoute = '/startScreen';
  static const String loginRoute = '/loginScreen';
  static const String registerRoute = '/registerScreen';
  static const String homeRoute = '/homeScreen';
  static const String profileRoute = '/profileScreen';
  static const String addTaskRoute = '/addTaskScreen';
}

final routes = {
  Routes.initialRoute : (context) => const SplashScreen(),
  Routes.startRoute : (context) => const StartScreen(),
  Routes.loginRoute : (context) => const LoginScreen(),
  Routes.registerRoute : (context) => const RegisterScreen(),
  Routes.homeRoute : (context) => const HomeScreen(),
  Routes.profileRoute : (context) => const ProfileScreen(),
  Routes.addTaskRoute : (context) => const AddTaskScreen(),
};