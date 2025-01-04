part of 'todo_cubit.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}
final class TodoLoading extends TodoState {}
final class TodoEmpty extends TodoState {}
final class TodoError extends TodoState {}
final class TodoRefresh extends TodoState {}
final class InfiniteScroll extends TodoState {}
