// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conflux.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Conflux {

 String get id; DateTime get created_at; String get user_id; String get plane_id; String? get tag; bool get portal;
/// Create a copy of Conflux
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfluxCopyWith<Conflux> get copyWith => _$ConfluxCopyWithImpl<Conflux>(this as Conflux, _$identity);

  /// Serializes this Conflux to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Conflux&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.plane_id, plane_id) || other.plane_id == plane_id)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.portal, portal) || other.portal == portal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,plane_id,tag,portal);

@override
String toString() {
  return 'Conflux(id: $id, created_at: $created_at, user_id: $user_id, plane_id: $plane_id, tag: $tag, portal: $portal)';
}


}

/// @nodoc
abstract mixin class $ConfluxCopyWith<$Res>  {
  factory $ConfluxCopyWith(Conflux value, $Res Function(Conflux) _then) = _$ConfluxCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String user_id, String plane_id, String? tag, bool portal
});




}
/// @nodoc
class _$ConfluxCopyWithImpl<$Res>
    implements $ConfluxCopyWith<$Res> {
  _$ConfluxCopyWithImpl(this._self, this._then);

  final Conflux _self;
  final $Res Function(Conflux) _then;

/// Create a copy of Conflux
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? plane_id = null,Object? tag = freezed,Object? portal = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,plane_id: null == plane_id ? _self.plane_id : plane_id // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,portal: null == portal ? _self.portal : portal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Conflux].
extension ConfluxPatterns on Conflux {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Conflux value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Conflux() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Conflux value)  $default,){
final _that = this;
switch (_that) {
case _Conflux():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Conflux value)?  $default,){
final _that = this;
switch (_that) {
case _Conflux() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String plane_id,  String? tag,  bool portal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Conflux() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.plane_id,_that.tag,_that.portal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String plane_id,  String? tag,  bool portal)  $default,) {final _that = this;
switch (_that) {
case _Conflux():
return $default(_that.id,_that.created_at,_that.user_id,_that.plane_id,_that.tag,_that.portal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String user_id,  String plane_id,  String? tag,  bool portal)?  $default,) {final _that = this;
switch (_that) {
case _Conflux() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.plane_id,_that.tag,_that.portal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Conflux implements Conflux {
   _Conflux({required this.id, required this.created_at, required this.user_id, required this.plane_id, this.tag, required this.portal});
  factory _Conflux.fromJson(Map<String, dynamic> json) => _$ConfluxFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  String user_id;
@override final  String plane_id;
@override final  String? tag;
@override final  bool portal;

/// Create a copy of Conflux
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfluxCopyWith<_Conflux> get copyWith => __$ConfluxCopyWithImpl<_Conflux>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfluxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Conflux&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.plane_id, plane_id) || other.plane_id == plane_id)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.portal, portal) || other.portal == portal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,plane_id,tag,portal);

@override
String toString() {
  return 'Conflux(id: $id, created_at: $created_at, user_id: $user_id, plane_id: $plane_id, tag: $tag, portal: $portal)';
}


}

/// @nodoc
abstract mixin class _$ConfluxCopyWith<$Res> implements $ConfluxCopyWith<$Res> {
  factory _$ConfluxCopyWith(_Conflux value, $Res Function(_Conflux) _then) = __$ConfluxCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String user_id, String plane_id, String? tag, bool portal
});




}
/// @nodoc
class __$ConfluxCopyWithImpl<$Res>
    implements _$ConfluxCopyWith<$Res> {
  __$ConfluxCopyWithImpl(this._self, this._then);

  final _Conflux _self;
  final $Res Function(_Conflux) _then;

/// Create a copy of Conflux
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? plane_id = null,Object? tag = freezed,Object? portal = null,}) {
  return _then(_Conflux(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,plane_id: null == plane_id ? _self.plane_id : plane_id // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,portal: null == portal ? _self.portal : portal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
