import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.freezed.dart';

@freezed
abstract class Menu with _$Menu {
  const factory Menu(IconData iconData, String title) = _Menu;
}
