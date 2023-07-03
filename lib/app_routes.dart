import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_list_app/pages/details_page.dart';

import 'model/task.dart';
import 'pages/projects/_view/projects_page.dart';
import 'pages/tasks/_view/tasks_page.dart';
import 'pages/teams/_view/teams_page.dart';

class AppRoutes {
  static final GoRouter routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const TasksPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'tasks',
            builder: (BuildContext context, GoRouterState state) {
              return const TasksPage();
            },
          ),
          GoRoute(
            path: 'projects',
            builder: (BuildContext context, GoRouterState state) {
              return const ProjectsPage();
            },
          ),
          GoRoute(
            path: 'teams',
            builder: (BuildContext context, GoRouterState state) {
              return const TeamsPage();
            },
          ),
          GoRoute(
            path: 'details',
            builder: (BuildContext context, GoRouterState state) {
              Task task = state.extra as Task;
              return DetailPage(task: task);
            },
          ),
        ],
      ),
    ],
  );
}
