import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/features/task/domain/entities/task_entity.dart';
import 'package:todo_app/features/task/domain/use_cases/task_use_case.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  final TaskUseCase taskUseCase;
  TaskCubit({required this.taskUseCase}) : super(TaskInitial()) {
    fetchTaskDetails();
  }

  Future fetchTaskDetails() async{
    emit(TaskLoading());
    try{
      final result = await taskUseCase();
      result.fold(
              (failure) => emit(TaskError(msg: failure)),
              (details) => emit(TaskLoaded(details: details))
      );
    } catch (e){
      emit(TaskError(msg: 'Unexpected error occurred: $e'));
    }
  }
}
