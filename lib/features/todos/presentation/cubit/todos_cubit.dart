import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/features/todos/domain/entities/todos_entity.dart';
import 'package:todo_app/features/todos/domain/use_cases/todos_use_case.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
   final ToDosUseCase toDosUseCase;
  TodosCubit({required this.toDosUseCase}) : super(TodosInitial()){
    fetchToDosData();
  }

  Future<void> fetchToDosData() async{
    emit(TodosLoading());
    try{
      final result = await toDosUseCase();
      result.fold(
              (failure) => emit(TodosError(msg: failure)),
              (toDo) => emit(TodosLoaded(todo: toDo)),
      );
    } catch (e) {
      emit(TodosError(msg: 'Unexpected error occurred: $e'));
    }
  }
}
