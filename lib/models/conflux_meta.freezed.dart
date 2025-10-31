// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conflux_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfluxMeta {

 String get id; DateTime get last_seen; String get user_id;
/// Create a copy of ConfluxMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfluxMetaCopyWith<ConfluxMeta> get copyWith => _$ConfluxMetaCopyWithImpl<ConfluxMeta>(this as ConfluxMeta, _$identity);

  /// Serializes this ConfluxMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfluxMeta&&(identical(other.id, id) || other.id == id)&&(identical(other.last_seen, last_seen) || other.last_seen == last_seen)&&(identical(other.user_id, user_id) || other.user_id == user_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,last_seen,user_id);

@override
String toString() {
  return 'ConfluxMeta(id: $id, last_seen: $last_seen, user_id: $user_id)';
}


}

/// @nodoc
abstract mixin class $ConfluxMetaCopyWith<$Res>  {
  factory $ConfluxMetaCopyWith(ConfluxMeta value, $Res Function(ConfluxMeta) _then) = _$ConfluxMetaCopyWithImpl;
@useResult
$Res call({
 String id, DateTime last_seen, String user_id
});




}
/// @nodoc
class _$ConfluxMetaCopyWithImpl<$Res>
    implements $ConfluxMetaCopyWith<$Res> {
  _$ConfluxMetaCopyWithImpl(this._self, this._then);

  final ConfluxMeta _self;
  final $Res Function(ConfluxMeta) _then;

/// Create a copy of ConfluxMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? last_seen = null,Object? user_id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,last_seen: null == last_seen ? _self.last_seen : last_seen // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfluxMeta].
extension ConfluxMetaPatterns on ConfluxMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfluxMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfluxMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfluxMeta value)  $default,){
final _that = this;
switch (_that) {
case _ConfluxMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfluxMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ConfluxMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime last_seen,  String user_id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfluxMeta() when $default != null:
return $default(_that.id,_that.last_seen,_that.user_id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime last_seen,  String user_id)  $default,) {final _that = this;
switch (_that) {
case _ConfluxMeta():
return $default(_that.id,_that.last_seen,_that.user_id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime last_seen,  String user_id)?  $default,) {final _that = this;
switch (_that) {
case _ConfluxMeta() when $default != null:
return $default(_that.id,_that.last_seen,_that.user_id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfluxMeta implements ConfluxMeta {
   _ConfluxMeta({required this.id, required this.last_seen, required this.user_id});
  factory _ConfluxMeta.fromJson(Map<String, dynamic> json) => _$ConfluxMetaFromJson(json);

@override final  String id;
@override final  DateTime last_seen;
@override final  String user_id;

/// Create a copy of ConfluxMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfluxMetaCopyWith<_ConfluxMeta> get copyWith => __$ConfluxMetaCopyWithImpl<_ConfluxMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfluxMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfluxMeta&&(identical(other.id, id) || other.id == id)&&(identical(other.last_seen, last_seen) || other.last_seen == last_seen)&&(identical(other.user_id, user_id) || other.user_id == user_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,last_seen,user_id);

@override
String toString() {
  return 'ConfluxMeta(id: $id, last_seen: $last_seen, user_id: $user_id)';
}


}

/// @nodoc
abstract mixin class _$ConfluxMetaCopyWith<$Res> implements $ConfluxMetaCopyWith<$Res> {
  factory _$ConfluxMetaCopyWith(_ConfluxMeta value, $Res Function(_ConfluxMeta) _then) = __$ConfluxMetaCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime last_seen, String user_id
});




}
/// @nodoc
class __$ConfluxMetaCopyWithImpl<$Res>
    implements _$ConfluxMetaCopyWith<$Res> {
  __$ConfluxMetaCopyWithImpl(this._self, this._then);

  final _ConfluxMeta _self;
  final $Res Function(_ConfluxMeta) _then;

/// Create a copy of ConfluxMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? last_seen = null,Object? user_id = null,}) {
  return _then(_ConfluxMeta(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,last_seen: null == last_seen ? _self.last_seen : last_seen // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
