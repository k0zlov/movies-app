// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckEmailParams _$CheckEmailParamsFromJson(Map<String, dynamic> json) {
  return _CheckEmailParams.fromJson(json);
}

/// @nodoc
mixin _$CheckEmailParams {
  String get email => throw _privateConstructorUsedError;

  /// Serializes this CheckEmailParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckEmailParamsCopyWith<CheckEmailParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckEmailParamsCopyWith<$Res> {
  factory $CheckEmailParamsCopyWith(
          CheckEmailParams value, $Res Function(CheckEmailParams) then) =
      _$CheckEmailParamsCopyWithImpl<$Res, CheckEmailParams>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$CheckEmailParamsCopyWithImpl<$Res, $Val extends CheckEmailParams>
    implements $CheckEmailParamsCopyWith<$Res> {
  _$CheckEmailParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckEmailParamsImplCopyWith<$Res>
    implements $CheckEmailParamsCopyWith<$Res> {
  factory _$$CheckEmailParamsImplCopyWith(_$CheckEmailParamsImpl value,
          $Res Function(_$CheckEmailParamsImpl) then) =
      __$$CheckEmailParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$CheckEmailParamsImplCopyWithImpl<$Res>
    extends _$CheckEmailParamsCopyWithImpl<$Res, _$CheckEmailParamsImpl>
    implements _$$CheckEmailParamsImplCopyWith<$Res> {
  __$$CheckEmailParamsImplCopyWithImpl(_$CheckEmailParamsImpl _value,
      $Res Function(_$CheckEmailParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$CheckEmailParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckEmailParamsImpl extends _CheckEmailParams {
  const _$CheckEmailParamsImpl({required this.email}) : super._();

  factory _$CheckEmailParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckEmailParamsImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'CheckEmailParams(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckEmailParamsImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of CheckEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckEmailParamsImplCopyWith<_$CheckEmailParamsImpl> get copyWith =>
      __$$CheckEmailParamsImplCopyWithImpl<_$CheckEmailParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckEmailParamsImplToJson(
      this,
    );
  }
}

abstract class _CheckEmailParams extends CheckEmailParams {
  const factory _CheckEmailParams({required final String email}) =
      _$CheckEmailParamsImpl;
  const _CheckEmailParams._() : super._();

  factory _CheckEmailParams.fromJson(Map<String, dynamic> json) =
      _$CheckEmailParamsImpl.fromJson;

  @override
  String get email;

  /// Create a copy of CheckEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckEmailParamsImplCopyWith<_$CheckEmailParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
