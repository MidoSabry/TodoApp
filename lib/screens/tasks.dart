import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/block/states.dart';
import 'package:todo_app/block/todoCubit.dart';
import 'package:todo_app/layout/home_layout.dart';
import 'package:todo_app/widgets/compnents.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = TodoCubit.get(context).newTasks;
        return ListView.separated(
            itemBuilder: (context, index) =>
                BuildTaskItem(tasks[index], context),
            separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
            itemCount: tasks.length);
      },
    );
  }
}
