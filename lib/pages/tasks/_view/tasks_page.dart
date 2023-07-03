import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:task_list_app/app_utility.dart';

import '../../../service/network_service.dart';
import '../../../ui_components/app_slider_drawer.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  static final GlobalKey<SliderDrawerState> sliderDrawerKey =
      GlobalKey<SliderDrawerState>();

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AppSliderDrawer(
        title: 'Tasks',
        widget: Consumer(
          builder: (context, watch, _) {
            final tasks =
                ProviderContainer().read(networkServiceProvider).getTasks();
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                    ),
                    child: ListTile(
                      title: Text(task.title ?? "-"),
                      trailing: Text(AppUtility.dateToDMHM(task.dateTime)),
                      onTap: () => {context.go('/details', extra: task)},
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
