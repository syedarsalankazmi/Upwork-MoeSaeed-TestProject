// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Menu {
  IconData get iconData => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res, Menu>;
  @useResult
  $Res call({IconData iconData, String title});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res, $Val extends Menu>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$_MenuCopyWith(_$_Menu value, $Res Function(_$_Menu) then) =
      __$$_MenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData iconData, String title});
}

/// @nodoc
class __$$_MenuCopyWithImpl<$Res> extends _$MenuCopyWithImpl<$Res, _$_Menu>
    implements _$$_MenuCopyWith<$Res> {
  __$$_MenuCopyWithImpl(_$_Menu _value, $Res Function(_$_Menu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
  }) {
    return _then(_$_Menu(
      null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Menu implements _Menu {
  const _$_Menu(this.iconData, this.title);

  @override
  final IconData iconData;
  @override
  final String title;

  @override
  String toString() {
    return 'Menu(iconData: $iconData, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Menu &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuCopyWith<_$_Menu> get copyWith =>
      __$$_MenuCopyWithImpl<_$_Menu>(this, _$identity);
}

abstract class _Menu implements Menu {
  const factory _Menu(final IconData iconData, final String title) = _$_Menu;

  @override
  IconData get iconData;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_MenuCopyWith<_$_Menu> get copyWith => throw _privateConstructorUsedError;
}
