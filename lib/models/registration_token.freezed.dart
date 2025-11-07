// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationToken {

 DateTime get created_at; String get user_id; String get plane_id; String get token_hash; DateTime get expires_at; String get token_id; String? get tag;
/// Create a copy of RegistrationToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationTokenCopyWith<RegistrationToken> get copyWith => _$RegistrationTokenCopyWithImpl<RegistrationToken>(this as RegistrationToken, _$identity);

  /// Serializes this RegistrationToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationToken&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.plane_id, plane_id) || other.plane_id == plane_id)&&(identical(other.token_hash, token_hash) || other.token_hash == token_hash)&&(identical(other.expires_at, expires_at) || other.expires_at == expires_at)&&(identical(other.token_id, token_id) || other.token_id == token_id)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,created_at,user_id,plane_id,token_hash,expires_at,token_id,tag);

@override
String toString() {
  return 'RegistrationToken(created_at: $created_at, user_id: $user_id, plane_id: $plane_id, token_hash: $token_hash, expires_at: $expires_at, token_id: $token_id, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $RegistrationTokenCopyWith<$Res>  {
  factory $RegistrationTokenCopyWith(RegistrationToken value, $Res Function(RegistrationToken) _then) = _$RegistrationTokenCopyWithImpl;
@useResult
$Res call({
 DateTime created_at, String user_id, String plane_id, String token_hash, DateTime expires_at, String token_id, String? tag
});




}
/// @nodoc
class _$RegistrationTokenCopyWithImpl<$Res>
    implements $RegistrationTokenCopyWith<$Res> {
  _$RegistrationTokenCopyWithImpl(this._self, this._then);

  final RegistrationToken _self;
  final $Res Function(RegistrationToken) _then;

/// Create a copy of RegistrationToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? created_at = null,Object? user_id = null,Object? plane_id = null,Object? token_hash = null,Object? expires_at = null,Object? token_id = null,Object? tag = freezed,}) {
  return _then(_self.copyWith(
created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,plane_id: null == plane_id ? _self.plane_id : plane_id // ignore: cast_nullable_to_non_nullable
as String,token_hash: null == token_hash ? _self.token_hash : token_hash // ignore: cast_nullable_to_non_nullable
as String,expires_at: null == expires_at ? _self.expires_at : expires_at // ignore: cast_nullable_to_non_nullable
as DateTime,token_id: null == token_id ? _self.token_id : token_id // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegistrationToken].
extension RegistrationTokenPatterns on RegistrationToken {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegistrationToken value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegistrationToken() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegistrationToken value)  $default,){
final _that = this;
switch (_that) {
case _RegistrationToken():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegistrationToken value)?  $default,){
final _that = this;
switch (_that) {
case _RegistrationToken() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime created_at,  String user_id,  String plane_id,  String token_hash,  DateTime expires_at,  String token_id,  String? tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegistrationToken() when $default != null:
return $default(_that.created_at,_that.user_id,_that.plane_id,_that.token_hash,_that.expires_at,_that.token_id,_that.tag);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime created_at,  String user_id,  String plane_id,  String token_hash,  DateTime expires_at,  String token_id,  String? tag)  $default,) {final _that = this;
switch (_that) {
case _RegistrationToken():
return $default(_that.created_at,_that.user_id,_that.plane_id,_that.token_hash,_that.expires_at,_that.token_id,_that.tag);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime created_at,  String user_id,  String plane_id,  String token_hash,  DateTime expires_at,  String token_id,  String? tag)?  $default,) {final _that = this;
switch (_that) {
case _RegistrationToken() when $default != null:
return $default(_that.created_at,_that.user_id,_that.plane_id,_that.token_hash,_that.expires_at,_that.token_id,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegistrationToken implements RegistrationToken {
   _RegistrationToken({required this.created_at, required this.user_id, required this.plane_id, required this.token_hash, required this.expires_at, required this.token_id, required this.tag});
  factory _RegistrationToken.fromJson(Map<String, dynamic> json) => _$RegistrationTokenFromJson(json);

@override final  DateTime created_at;
@override final  String user_id;
@override final  String plane_id;
@override final  String token_hash;
@override final  DateTime expires_at;
@override final  String token_id;
@override final  String? tag;

/// Create a copy of RegistrationToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegistrationTokenCopyWith<_RegistrationToken> get copyWith => __$RegistrationTokenCopyWithImpl<_RegistrationToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegistrationTokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegistrationToken&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.plane_id, plane_id) || other.plane_id == plane_id)&&(identical(other.token_hash, token_hash) || other.token_hash == token_hash)&&(identical(other.expires_at, expires_at) || other.expires_at == expires_at)&&(identical(other.token_id, token_id) || other.token_id == token_id)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,created_at,user_id,plane_id,token_hash,expires_at,token_id,tag);

@override
String toString() {
  return 'RegistrationToken(created_at: $created_at, user_id: $user_id, plane_id: $plane_id, token_hash: $token_hash, expires_at: $expires_at, token_id: $token_id, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$RegistrationTokenCopyWith<$Res> implements $RegistrationTokenCopyWith<$Res> {
  factory _$RegistrationTokenCopyWith(_RegistrationToken value, $Res Function(_RegistrationToken) _then) = __$RegistrationTokenCopyWithImpl;
@override @useResult
$Res call({
 DateTime created_at, String user_id, String plane_id, String token_hash, DateTime expires_at, String token_id, String? tag
});




}
/// @nodoc
class __$RegistrationTokenCopyWithImpl<$Res>
    implements _$RegistrationTokenCopyWith<$Res> {
  __$RegistrationTokenCopyWithImpl(this._self, this._then);

  final _RegistrationToken _self;
  final $Res Function(_RegistrationToken) _then;

/// Create a copy of RegistrationToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? created_at = null,Object? user_id = null,Object? plane_id = null,Object? token_hash = null,Object? expires_at = null,Object? token_id = null,Object? tag = freezed,}) {
  return _then(_RegistrationToken(
created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,plane_id: null == plane_id ? _self.plane_id : plane_id // ignore: cast_nullable_to_non_nullable
as String,token_hash: null == token_hash ? _self.token_hash : token_hash // ignore: cast_nullable_to_non_nullable
as String,expires_at: null == expires_at ? _self.expires_at : expires_at // ignore: cast_nullable_to_non_nullable
as DateTime,token_id: null == token_id ? _self.token_id : token_id // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
