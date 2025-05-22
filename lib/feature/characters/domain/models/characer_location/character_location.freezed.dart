// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CharacterLocation _$CharacterLocationFromJson(Map<String, dynamic> json) {
  return _CharacterLocation.fromJson(json);
}

/// @nodoc
mixin _$CharacterLocation {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this CharacterLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterLocationCopyWith<CharacterLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterLocationCopyWith<$Res> {
  factory $CharacterLocationCopyWith(
    CharacterLocation value,
    $Res Function(CharacterLocation) then,
  ) = _$CharacterLocationCopyWithImpl<$Res, CharacterLocation>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CharacterLocationCopyWithImpl<$Res, $Val extends CharacterLocation>
    implements $CharacterLocationCopyWith<$Res> {
  _$CharacterLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CharacterLocationImplCopyWith<$Res>
    implements $CharacterLocationCopyWith<$Res> {
  factory _$$CharacterLocationImplCopyWith(
    _$CharacterLocationImpl value,
    $Res Function(_$CharacterLocationImpl) then,
  ) = __$$CharacterLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$CharacterLocationImplCopyWithImpl<$Res>
    extends _$CharacterLocationCopyWithImpl<$Res, _$CharacterLocationImpl>
    implements _$$CharacterLocationImplCopyWith<$Res> {
  __$$CharacterLocationImplCopyWithImpl(
    _$CharacterLocationImpl _value,
    $Res Function(_$CharacterLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$CharacterLocationImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterLocationImpl implements _CharacterLocation {
  _$CharacterLocationImpl({required this.name, required this.url});

  factory _$CharacterLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterLocationImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterLocation(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterLocationImplCopyWith<_$CharacterLocationImpl> get copyWith =>
      __$$CharacterLocationImplCopyWithImpl<_$CharacterLocationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterLocationImplToJson(this);
  }
}

abstract class _CharacterLocation implements CharacterLocation {
  factory _CharacterLocation({
    required final String name,
    required final String url,
  }) = _$CharacterLocationImpl;

  factory _CharacterLocation.fromJson(Map<String, dynamic> json) =
      _$CharacterLocationImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterLocationImplCopyWith<_$CharacterLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
