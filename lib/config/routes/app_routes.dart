import 'package:todo_app/feature/presentation/screens/login_screen.dart';
import 'package:todo_app/feature/presentation/screens/register_screen.dart';
import 'package:todo_app/feature/presentation/screens/splash_screen.dart';
import 'package:todo_app/feature/presentation/screens/start_screen.dart';

class Routes
{
  static const String initialRoute = '/';
  static const String startRoute = '/startScreen';
  static const String loginRoute = '/loginScreen';
  static const String registerRoute = '/registerScreen';
}

final routes = {
  Routes.initialRoute : (context) => SplashScreen(),
  Routes.startRoute : (context) => StartScreen(),
  Routes.loginRoute : (context) => LoginScreen(),
  Routes.registerRoute : (context) => RegisterScreen(),
};