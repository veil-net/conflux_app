// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plane_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaneDetails {

 String get id; DateTime get created_at; String get user_id; String get veil_id; String get name; String get subnet; bool get public; String get region; String get veil_host; int get veil_port; int get portals;
/// Create a copy of PlaneDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaneDetailsCopyWith<PlaneDetails> get copyWith => _$PlaneDetailsCopyWithImpl<PlaneDetails>(this as PlaneDetails, _$identity);

  /// Serializes this PlaneDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaneDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.veil_id, veil_id) || other.veil_id == veil_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subnet, subnet) || other.subnet == subnet)&&(identical(other.public, public) || other.public == public)&&(identical(other.region, region) || other.region == region)&&(identical(other.veil_host, veil_host) || other.veil_host == veil_host)&&(identical(other.veil_port, veil_port) || other.veil_port == veil_port)&&(identical(other.portals, portals) || other.portals == portals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,veil_id,name,subnet,public,region,veil_host,veil_port,portals);

@override
String toString() {
  return 'PlaneDetails(id: $id, created_at: $created_at, user_id: $user_id, veil_id: $veil_id, name: $name, subnet: $subnet, public: $public, region: $region, veil_host: $veil_host, veil_port: $veil_port, portals: $portals)';
}


}

/// @nodoc
abstract mixin class $PlaneDetailsCopyWith<$Res>  {
  factory $PlaneDetailsCopyWith(PlaneDetails value, $Res Function(PlaneDetails) _then) = _$PlaneDetailsCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String user_id, String veil_id, String name, String subnet, bool public, String region, String veil_host, int veil_port, int portals
});




}
/// @nodoc
class _$PlaneDetailsCopyWithImpl<$Res>
    implements $PlaneDetailsCopyWith<$Res> {
  _$PlaneDetailsCopyWithImpl(this._self, this._then);

  final PlaneDetails _self;
  final $Res Function(PlaneDetails) _then;

/// Create a copy of PlaneDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? veil_id = null,Object? name = null,Object? subnet = null,Object? public = null,Object? region = null,Object? veil_host = null,Object? veil_port = null,Object? portals = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,veil_id: null == veil_id ? _self.veil_id : veil_id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subnet: null == subnet ? _self.subnet : subnet // ignore: cast_nullable_to_non_nullable
as String,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,veil_host: null == veil_host ? _self.veil_host : veil_host // ignore: cast_nullable_to_non_nullable
as String,veil_port: null == veil_port ? _self.veil_port : veil_port // ignore: cast_nullable_to_non_nullable
as int,portals: null == portals ? _self.portals : portals // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaneDetails].
extension PlaneDetailsPatterns on PlaneDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaneDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaneDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaneDetails value)  $default,){
final _that = this;
switch (_that) {
case _PlaneDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaneDetails value)?  $default,){
final _that = this;
switch (_that) {
case _PlaneDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  String region,  String veil_host,  int veil_port,  int portals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaneDetails() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.region,_that.veil_host,_that.veil_port,_that.portals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  String region,  String veil_host,  int veil_port,  int portals)  $default,) {final _that = this;
switch (_that) {
case _PlaneDetails():
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.region,_that.veil_host,_that.veil_port,_that.portals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  String region,  String veil_host,  int veil_port,  int portals)?  $default,) {final _that = this;
switch (_that) {
case _PlaneDetails() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.region,_that.veil_host,_that.veil_port,_that.portals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaneDetails implements PlaneDetails {
   _PlaneDetails({required this.id, required this.created_at, required this.user_id, required this.veil_id, required this.name, required this.subnet, required this.public, required this.region, required this.veil_host, required this.veil_port, required this.portals});
  factory _PlaneDetails.fromJson(Map<String, dynamic> json) => _$PlaneDetailsFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  String user_id;
@override final  String veil_id;
@override final  String name;
@override final  String subnet;
@override final  bool public;
@override final  String region;
@override final  String veil_host;
@override final  int veil_port;
@override final  int portals;

/// Create a copy of PlaneDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaneDetailsCopyWith<_PlaneDetails> get copyWith => __$PlaneDetailsCopyWithImpl<_PlaneDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaneDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaneDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.veil_id, veil_id) || other.veil_id == veil_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subnet, subnet) || other.subnet == subnet)&&(identical(other.public, public) || other.public == public)&&(identical(other.region, region) || other.region == region)&&(identical(other.veil_host, veil_host) || other.veil_host == veil_host)&&(identical(other.veil_port, veil_port) || other.veil_port == veil_port)&&(identical(other.portals, portals) || other.portals == portals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,veil_id,name,subnet,public,region,veil_host,veil_port,portals);

@override
String toString() {
  return 'PlaneDetails(id: $id, created_at: $created_at, user_id: $user_id, veil_id: $veil_id, name: $name, subnet: $subnet, public: $public, region: $region, veil_host: $veil_host, veil_port: $veil_port, portals: $portals)';
}


}

/// @nodoc
abstract mixin class _$PlaneDetailsCopyWith<$Res> implements $PlaneDetailsCopyWith<$Res> {
  factory _$PlaneDetailsCopyWith(_PlaneDetails value, $Res Function(_PlaneDetails) _then) = __$PlaneDetailsCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String user_id, String veil_id, String name, String subnet, bool public, String region, String veil_host, int veil_port, int portals
});




}
/// @nodoc
class __$PlaneDetailsCopyWithImpl<$Res>
    implements _$PlaneDetailsCopyWith<$Res> {
  __$PlaneDetailsCopyWithImpl(this._self, this._then);

  final _PlaneDetails _self;
  final $Res Function(_PlaneDetails) _then;

/// Create a copy of PlaneDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? veil_id = null,Object? name = null,Object? subnet = null,Object? public = null,Object? region = null,Object? veil_host = null,Object? veil_port = null,Object? portals = null,}) {
  return _then(_PlaneDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,veil_id: null == veil_id ? _self.veil_id : veil_id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subnet: null == subnet ? _self.subnet : subnet // ignore: cast_nullable_to_non_nullable
as String,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,veil_host: null == veil_host ? _self.veil_host : veil_host // ignore: cast_nullable_to_non_nullable
as String,veil_port: null == veil_port ? _self.veil_port : veil_port // ignore: cast_nullable_to_non_nullable
as int,portals: null == portals ? _self.portals : portals // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
