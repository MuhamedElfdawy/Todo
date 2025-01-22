import 'package:flutter_bloc/flutter_bloc.dart';

class BodyToggleCubit extends Cubit<bool>
{
  BodyToggleCubit() : super(true){
    toggleBody();
  }
  void toggleBody() => emit(!state);
}