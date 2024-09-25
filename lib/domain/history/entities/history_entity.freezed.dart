// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryEntity {
  String get expr => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryEntityCopyWith<HistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEntityCopyWith<$Res> {
  factory $HistoryEntityCopyWith(
          HistoryEntity value, $Res Function(HistoryEntity) then) =
      _$HistoryEntityCopyWithImpl<$Res, HistoryEntity>;
  @useResult
  $Res call({String expr, String result});
}

/// @nodoc
class _$HistoryEntityCopyWithImpl<$Res, $Val extends HistoryEntity>
    implements $HistoryEntityCopyWith<$Res> {
  _$HistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expr = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      expr: null == expr
          ? _value.expr
          : expr // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryEntityImplCopyWith<$Res>
    implements $HistoryEntityCopyWith<$Res> {
  factory _$$HistoryEntityImplCopyWith(
          _$HistoryEntityImpl value, $Res Function(_$HistoryEntityImpl) then) =
      __$$HistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String expr, String result});
}

/// @nodoc
class __$$HistoryEntityImplCopyWithImpl<$Res>
    extends _$HistoryEntityCopyWithImpl<$Res, _$HistoryEntityImpl>
    implements _$$HistoryEntityImplCopyWith<$Res> {
  __$$HistoryEntityImplCopyWithImpl(
      _$HistoryEntityImpl _value, $Res Function(_$HistoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expr = null,
    Object? result = null,
  }) {
    return _then(_$HistoryEntityImpl(
      expr: null == expr
          ? _value.expr
          : expr // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryEntityImpl implements _HistoryEntity {
  const _$HistoryEntityImpl({required this.expr, required this.result});

  @override
  final String expr;
  @override
  final String result;

  @override
  String toString() {
    return 'HistoryEntity(expr: $expr, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryEntityImpl &&
            (identical(other.expr, expr) || other.expr == expr) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expr, result);

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryEntityImplCopyWith<_$HistoryEntityImpl> get copyWith =>
      __$$HistoryEntityImplCopyWithImpl<_$HistoryEntityImpl>(this, _$identity);
}

abstract class _HistoryEntity implements HistoryEntity {
  const factory _HistoryEntity(
      {required final String expr,
      required final String result}) = _$HistoryEntityImpl;

  @override
  String get expr;
  @override
  String get result;

  /// Create a copy of HistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryEntityImplCopyWith<_$HistoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
