// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigatorState {
  int get currentIndex => throw _privateConstructorUsedError;
  int get oldIndex => throw _privateConstructorUsedError;
  int get delayIndex => throw _privateConstructorUsedError;
  List<RutasNav> get modulesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigatorStateCopyWith<NavigatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorStateCopyWith<$Res> {
  factory $NavigatorStateCopyWith(
          NavigatorState value, $Res Function(NavigatorState) then) =
      _$NavigatorStateCopyWithImpl<$Res, NavigatorState>;
  @useResult
  $Res call(
      {int currentIndex,
      int oldIndex,
      int delayIndex,
      List<RutasNav> modulesList});
}

/// @nodoc
class _$NavigatorStateCopyWithImpl<$Res, $Val extends NavigatorState>
    implements $NavigatorStateCopyWith<$Res> {
  _$NavigatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? oldIndex = null,
    Object? delayIndex = null,
    Object? modulesList = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      delayIndex: null == delayIndex
          ? _value.delayIndex
          : delayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      modulesList: null == modulesList
          ? _value.modulesList
          : modulesList // ignore: cast_nullable_to_non_nullable
              as List<RutasNav>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigatorStateImplCopyWith<$Res>
    implements $NavigatorStateCopyWith<$Res> {
  factory _$$NavigatorStateImplCopyWith(_$NavigatorStateImpl value,
          $Res Function(_$NavigatorStateImpl) then) =
      __$$NavigatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex,
      int oldIndex,
      int delayIndex,
      List<RutasNav> modulesList});
}

/// @nodoc
class __$$NavigatorStateImplCopyWithImpl<$Res>
    extends _$NavigatorStateCopyWithImpl<$Res, _$NavigatorStateImpl>
    implements _$$NavigatorStateImplCopyWith<$Res> {
  __$$NavigatorStateImplCopyWithImpl(
      _$NavigatorStateImpl _value, $Res Function(_$NavigatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? oldIndex = null,
    Object? delayIndex = null,
    Object? modulesList = null,
  }) {
    return _then(_$NavigatorStateImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      delayIndex: null == delayIndex
          ? _value.delayIndex
          : delayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      modulesList: null == modulesList
          ? _value._modulesList
          : modulesList // ignore: cast_nullable_to_non_nullable
              as List<RutasNav>,
    ));
  }
}

/// @nodoc

class _$NavigatorStateImpl implements _NavigatorState {
  const _$NavigatorStateImpl(
      {this.currentIndex = -1,
      this.oldIndex = -1,
      this.delayIndex = -1,
      final List<RutasNav> modulesList = const []})
      : _modulesList = modulesList;

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int oldIndex;
  @override
  @JsonKey()
  final int delayIndex;
  final List<RutasNav> _modulesList;
  @override
  @JsonKey()
  List<RutasNav> get modulesList {
    if (_modulesList is EqualUnmodifiableListView) return _modulesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modulesList);
  }

  @override
  String toString() {
    return 'NavigatorState(currentIndex: $currentIndex, oldIndex: $oldIndex, delayIndex: $delayIndex, modulesList: $modulesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigatorStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.delayIndex, delayIndex) ||
                other.delayIndex == delayIndex) &&
            const DeepCollectionEquality()
                .equals(other._modulesList, _modulesList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex, oldIndex,
      delayIndex, const DeepCollectionEquality().hash(_modulesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigatorStateImplCopyWith<_$NavigatorStateImpl> get copyWith =>
      __$$NavigatorStateImplCopyWithImpl<_$NavigatorStateImpl>(
          this, _$identity);
}

abstract class _NavigatorState implements NavigatorState {
  const factory _NavigatorState(
      {final int currentIndex,
      final int oldIndex,
      final int delayIndex,
      final List<RutasNav> modulesList}) = _$NavigatorStateImpl;

  @override
  int get currentIndex;
  @override
  int get oldIndex;
  @override
  int get delayIndex;
  @override
  List<RutasNav> get modulesList;
  @override
  @JsonKey(ignore: true)
  _$$NavigatorStateImplCopyWith<_$NavigatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
