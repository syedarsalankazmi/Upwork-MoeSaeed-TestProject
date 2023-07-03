import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:go_router/go_router.dart';

import '../common/app_style.dart';
import '../model/menu.dart';

class AppSliderDrawer extends StatefulWidget {
  final String title;

  final Widget widget;

  const AppSliderDrawer({
    required this.title,
    required this.widget,
    super.key,
  });

  @override
  State<AppSliderDrawer> createState() => _AppSliderDrawerState();
}

class _AppSliderDrawerState extends State<AppSliderDrawer> {
  late String title;

  @override
  void initState() {
    this.title = widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SliderDrawerState> _sliderDrawerKey =
        GlobalKey<SliderDrawerState>();

    return SliderDrawer(
      key: _sliderDrawerKey,
      appBar: SliderAppBar(
        appBarHeight: 150,
        appBarPadding: EdgeInsets.only(top: 30),
        appBarColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.w700),
                ),
              ),
              Divider(
                color: AppStyle.darkBlue,
              ),
            ],
          ),
        ),
      ),
      slider: SliderView(
        onItemClick: (title) {
          // _sliderDrawerKey.currentState!.closeSlider();
          setState(() {
            this.title = title;
          });
          if (title == "Tasks") {
            context.go('/tasks');
          } else if (title == "Projects") {
            context.go('/projects');
          } else if (title == "Teams") {
            context.go('/teams');
          }
        },
      ),
      child: widget.widget,
    );
  }
}

class SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppStyle.darkBlue,
      padding: const EdgeInsets.only(top: 100),
      child: ListView(
        children: <Widget>[
          Divider(
            color: AppStyle.mediumBlue,
          ),
          ...[
            Menu(Icons.add_circle, 'Tasks'),
            Menu(Icons.add_circle, 'Projects'),
            Menu(Icons.arrow_back_ios, 'Teams')
          ]
              .map(
                (menu) => _SliderMenuItem(
                    title: menu.title,
                    iconData: menu.iconData,
                    onTap: onItemClick),
              )
              .toList(),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: () => onTap?.call(title),
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Divider(
          color: AppStyle.mediumBlue,
        ),
      ],
    );
  }
}
