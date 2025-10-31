// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plane.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Plane {

 String get id; DateTime get created_at; String get user_id; String get veil_id; String get name; String get subnet; bool get public; int get portals;
/// Create a copy of Plane
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaneCopyWith<Plane> get copyWith => _$PlaneCopyWithImpl<Plane>(this as Plane, _$identity);

  /// Serializes this Plane to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Plane&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.veil_id, veil_id) || other.veil_id == veil_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subnet, subnet) || other.subnet == subnet)&&(identical(other.public, public) || other.public == public)&&(identical(other.portals, portals) || other.portals == portals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,veil_id,name,subnet,public,portals);

@override
String toString() {
  return 'Plane(id: $id, created_at: $created_at, user_id: $user_id, veil_id: $veil_id, name: $name, subnet: $subnet, public: $public, portals: $portals)';
}


}

/// @nodoc
abstract mixin class $PlaneCopyWith<$Res>  {
  factory $PlaneCopyWith(Plane value, $Res Function(Plane) _then) = _$PlaneCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String user_id, String veil_id, String name, String subnet, bool public, int portals
});




}
/// @nodoc
class _$PlaneCopyWithImpl<$Res>
    implements $PlaneCopyWith<$Res> {
  _$PlaneCopyWithImpl(this._self, this._then);

  final Plane _self;
  final $Res Function(Plane) _then;

/// Create a copy of Plane
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? veil_id = null,Object? name = null,Object? subnet = null,Object? public = null,Object? portals = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,veil_id: null == veil_id ? _self.veil_id : veil_id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subnet: null == subnet ? _self.subnet : subnet // ignore: cast_nullable_to_non_nullable
as String,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,portals: null == portals ? _self.portals : portals // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Plane].
extension PlanePatterns on Plane {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Plane value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Plane() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Plane value)  $default,){
final _that = this;
switch (_that) {
case _Plane():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Plane value)?  $default,){
final _that = this;
switch (_that) {
case _Plane() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  int portals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Plane() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.portals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  int portals)  $default,) {final _that = this;
switch (_that) {
case _Plane():
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.portals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  int portals)?  $default,) {final _that = this;
switch (_that) {
case _Plane() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.portals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Plane implements Plane {
   _Plane({required this.id, required this.created_at, required this.user_id, required this.veil_id, required this.name, required this.subnet, required this.public, required this.portals});
  factory _Plane.fromJson(Map<String, dynamic> json) => _$PlaneFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  String user_id;
@override final  String veil_id;
@override final  String name;
@override final  String subnet;
@override final  bool public;
@override final  int portals;

/// Create a copy of Plane
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaneCopyWith<_Plane> get copyWith => __$PlaneCopyWithImpl<_Plane>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Plane&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.veil_id, veil_id) || other.veil_id == veil_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subnet, subnet) || other.subnet == subnet)&&(identical(other.public, public) || other.public == public)&&(identical(other.portals, portals) || other.portals == portals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,veil_id,name,subnet,public,portals);

@override
String toString() {
  return 'Plane(id: $id, created_at: $created_at, user_id: $user_id, veil_id: $veil_id, name: $name, subnet: $subnet, public: $public, portals: $portals)';
}


}

/// @nodoc
abstract mixin class _$PlaneCopyWith<$Res> implements $PlaneCopyWith<$Res> {
  factory _$PlaneCopyWith(_Plane value, $Res Function(_Plane) _then) = __$PlaneCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String user_id, String veil_id, String name, String subnet, bool public, int portals
});




}
/// @nodoc
class __$PlaneCopyWithImpl<$Res>
    implements _$PlaneCopyWith<$Res> {
  __$PlaneCopyWithImpl(this._self, this._then);

  final _Plane _self;
  final $Res Function(_Plane) _then;

/// Create a copy of Plane
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? veil_id = null,Object? name = null,Object? subnet = null,Object? public = null,Object? portals = null,}) {
  return _then(_Plane(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,veil_id: null == veil_id ? _self.veil_id : veil_id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subnet: null == subnet ? _self.subnet : subnet // ignore: cast_nullable_to_non_nullable
as String,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,portals: null == portals ? _self.portals : portals // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
