import 'package:flutter/material.dart';
import 'package:task_list_app/model/task.dart';

import '../app_utility.dart';
import '../ui_components/app_slider_drawer.dart';

class DetailPage extends StatefulWidget {
  final Task task;

  const DetailPage({required this.task, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AppSliderDrawer(
        title: widget.task.title ?? "-",
        widget: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppUtility.dateToDMHM(widget.task.dateTime),
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.task.description.toString(),
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
