import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/app.dart';
import 'package:todo_app/config/routes/app_routes.dart';
import 'package:todo_app/bloc_observer.dart';

late final SharedPreferences prefs;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();


  prefs = await SharedPreferences.getInstance();
  Bloc.observer = AppBlocObserver();

  runApp(ToDoApp(appRouter: AppRouter(),));
}


