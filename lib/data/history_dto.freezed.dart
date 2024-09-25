// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryDto _$HistoryDtoFromJson(Map<String, dynamic> json) {
  return _HistoryDto.fromJson(json);
}

/// @nodoc
mixin _$HistoryDto {
  @HistoryListConverter()
  List<HistoryEntity> get history => throw _privateConstructorUsedError;

  /// Serializes this HistoryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryDtoCopyWith<HistoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDtoCopyWith<$Res> {
  factory $HistoryDtoCopyWith(
          HistoryDto value, $Res Function(HistoryDto) then) =
      _$HistoryDtoCopyWithImpl<$Res, HistoryDto>;
  @useResult
  $Res call({@HistoryListConverter() List<HistoryEntity> history});
}

/// @nodoc
class _$HistoryDtoCopyWithImpl<$Res, $Val extends HistoryDto>
    implements $HistoryDtoCopyWith<$Res> {
  _$HistoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryDtoImplCopyWith<$Res>
    implements $HistoryDtoCopyWith<$Res> {
  factory _$$HistoryDtoImplCopyWith(
          _$HistoryDtoImpl value, $Res Function(_$HistoryDtoImpl) then) =
      __$$HistoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HistoryListConverter() List<HistoryEntity> history});
}

/// @nodoc
class __$$HistoryDtoImplCopyWithImpl<$Res>
    extends _$HistoryDtoCopyWithImpl<$Res, _$HistoryDtoImpl>
    implements _$$HistoryDtoImplCopyWith<$Res> {
  __$$HistoryDtoImplCopyWithImpl(
      _$HistoryDtoImpl _value, $Res Function(_$HistoryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
  }) {
    return _then(_$HistoryDtoImpl(
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistoryEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryDtoImpl implements _HistoryDto {
  const _$HistoryDtoImpl(
      {@HistoryListConverter() required final List<HistoryEntity> history})
      : _history = history;

  factory _$HistoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryDtoImplFromJson(json);

  final List<HistoryEntity> _history;
  @override
  @HistoryListConverter()
  List<HistoryEntity> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'HistoryDto(history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryDtoImpl &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_history));

  /// Create a copy of HistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryDtoImplCopyWith<_$HistoryDtoImpl> get copyWith =>
      __$$HistoryDtoImplCopyWithImpl<_$HistoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryDtoImplToJson(
      this,
    );
  }
}

abstract class _HistoryDto implements HistoryDto {
  const factory _HistoryDto(
      {@HistoryListConverter()
      required final List<HistoryEntity> history}) = _$HistoryDtoImpl;

  factory _HistoryDto.fromJson(Map<String, dynamic> json) =
      _$HistoryDtoImpl.fromJson;

  @override
  @HistoryListConverter()
  List<HistoryEntity> get history;

  /// Create a copy of HistoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryDtoImplCopyWith<_$HistoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
