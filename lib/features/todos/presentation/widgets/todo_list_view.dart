import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/todos/presentation/cubit/todos_cubit.dart';
import 'package:todo_app/features/todos/presentation/widgets/task_item.dart';

class ToDoListView extends StatelessWidget {
  const ToDoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodosCubit, TodosState>(
        builder: (context, state) {
          if(state is TodosLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if(state is TodosLoaded){
            return Expanded(
              child: ListView.builder(
                itemCount: state.todo.length,
                itemBuilder: (context, index) => TaskItem(todo: state.todo[index],),
              ),
            );
          } else if(state is TodosError){
            return Dialog(
              child: Text(state.msg),
            );
          } else {
            return const Center(
              child: Text('No Data Available'),
            );
          }
        },
    );
  }
}
