// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conflux_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfluxSession {

 String get id; DateTime get created_at; String get user_id; String get signature;
/// Create a copy of ConfluxSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfluxSessionCopyWith<ConfluxSession> get copyWith => _$ConfluxSessionCopyWithImpl<ConfluxSession>(this as ConfluxSession, _$identity);

  /// Serializes this ConfluxSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfluxSession&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,signature);

@override
String toString() {
  return 'ConfluxSession(id: $id, created_at: $created_at, user_id: $user_id, signature: $signature)';
}


}

/// @nodoc
abstract mixin class $ConfluxSessionCopyWith<$Res>  {
  factory $ConfluxSessionCopyWith(ConfluxSession value, $Res Function(ConfluxSession) _then) = _$ConfluxSessionCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String user_id, String signature
});




}
/// @nodoc
class _$ConfluxSessionCopyWithImpl<$Res>
    implements $ConfluxSessionCopyWith<$Res> {
  _$ConfluxSessionCopyWithImpl(this._self, this._then);

  final ConfluxSession _self;
  final $Res Function(ConfluxSession) _then;

/// Create a copy of ConfluxSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? signature = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfluxSession].
extension ConfluxSessionPatterns on ConfluxSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfluxSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfluxSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfluxSession value)  $default,){
final _that = this;
switch (_that) {
case _ConfluxSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfluxSession value)?  $default,){
final _that = this;
switch (_that) {
case _ConfluxSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String signature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfluxSession() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.signature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String signature)  $default,) {final _that = this;
switch (_that) {
case _ConfluxSession():
return $default(_that.id,_that.created_at,_that.user_id,_that.signature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String user_id,  String signature)?  $default,) {final _that = this;
switch (_that) {
case _ConfluxSession() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.signature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfluxSession implements ConfluxSession {
   _ConfluxSession({required this.id, required this.created_at, required this.user_id, required this.signature});
  factory _ConfluxSession.fromJson(Map<String, dynamic> json) => _$ConfluxSessionFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  String user_id;
@override final  String signature;

/// Create a copy of ConfluxSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfluxSessionCopyWith<_ConfluxSession> get copyWith => __$ConfluxSessionCopyWithImpl<_ConfluxSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfluxSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfluxSession&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,signature);

@override
String toString() {
  return 'ConfluxSession(id: $id, created_at: $created_at, user_id: $user_id, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$ConfluxSessionCopyWith<$Res> implements $ConfluxSessionCopyWith<$Res> {
  factory _$ConfluxSessionCopyWith(_ConfluxSession value, $Res Function(_ConfluxSession) _then) = __$ConfluxSessionCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String user_id, String signature
});




}
/// @nodoc
class __$ConfluxSessionCopyWithImpl<$Res>
    implements _$ConfluxSessionCopyWith<$Res> {
  __$ConfluxSessionCopyWithImpl(this._self, this._then);

  final _ConfluxSession _self;
  final $Res Function(_ConfluxSession) _then;

/// Create a copy of ConfluxSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? signature = null,}) {
  return _then(_ConfluxSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
