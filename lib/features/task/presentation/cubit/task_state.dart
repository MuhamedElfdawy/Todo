part of 'task_cubit.dart';

@immutable
sealed class TaskState {}

final class TaskInitial extends TaskState {}
final class TaskLoading extends TaskState {}
final class TaskLoaded extends TaskState {
  final TaskEntity details;

  TaskLoaded({required this.details});
}
final class TaskError extends TaskState {
  final String msg;

  TaskError({required this.msg});
}
