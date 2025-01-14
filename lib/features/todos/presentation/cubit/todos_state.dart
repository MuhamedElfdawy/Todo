part of 'todos_cubit.dart';

@immutable
sealed class TodosState {}

final class TodosInitial extends TodosState {}
final class TodosLoading extends TodosState {}
final class TodosLoaded extends TodosState {
  final List<ToDosEntity> todo;

  TodosLoaded({required this.todo});
}
final class TodosError extends TodosState {
  final String msg;

  TodosError({required this.msg});
}
