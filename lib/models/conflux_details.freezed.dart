// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conflux_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfluxDetails {

 String get id; DateTime get created_at; DateTime get last_seen; String get user_id; String? get tag; String? get signature; String? get cidr; String get subnet; String get plane; String get plane_id; bool get public; bool get portal; String get region; String get veil_host; int get veil_port;
/// Create a copy of ConfluxDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfluxDetailsCopyWith<ConfluxDetails> get copyWith => _$ConfluxDetailsCopyWithImpl<ConfluxDetails>(this as ConfluxDetails, _$identity);

  /// Serializes this ConfluxDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfluxDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.last_seen, last_seen) || other.last_seen == last_seen)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.cidr, cidr) || other.cidr == cidr)&&(identical(other.subnet, subnet) || other.subnet == subnet)&&(identical(other.plane, plane) || other.plane == plane)&&(identical(other.plane_id, plane_id) || other.plane_id == plane_id)&&(identical(other.public, public) || other.public == public)&&(identical(other.portal, portal) || other.portal == portal)&&(identical(other.region, region) || other.region == region)&&(identical(other.veil_host, veil_host) || other.veil_host == veil_host)&&(identical(other.veil_port, veil_port) || other.veil_port == veil_port));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,last_seen,user_id,tag,signature,cidr,subnet,plane,plane_id,public,portal,region,veil_host,veil_port);

@override
String toString() {
  return 'ConfluxDetails(id: $id, created_at: $created_at, last_seen: $last_seen, user_id: $user_id, tag: $tag, signature: $signature, cidr: $cidr, subnet: $subnet, plane: $plane, plane_id: $plane_id, public: $public, portal: $portal, region: $region, veil_host: $veil_host, veil_port: $veil_port)';
}


}

/// @nodoc
abstract mixin class $ConfluxDetailsCopyWith<$Res>  {
  factory $ConfluxDetailsCopyWith(ConfluxDetails value, $Res Function(ConfluxDetails) _then) = _$ConfluxDetailsCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, DateTime last_seen, String user_id, String? tag, String? signature, String? cidr, String subnet, String plane, String plane_id, bool public, bool portal, String region, String veil_host, int veil_port
});




}
/// @nodoc
class _$ConfluxDetailsCopyWithImpl<$Res>
    implements $ConfluxDetailsCopyWith<$Res> {
  _$ConfluxDetailsCopyWithImpl(this._self, this._then);

  final ConfluxDetails _self;
  final $Res Function(ConfluxDetails) _then;

/// Create a copy of ConfluxDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? last_seen = null,Object? user_id = null,Object? tag = freezed,Object? signature = freezed,Object? cidr = freezed,Object? subnet = null,Object? plane = null,Object? plane_id = null,Object? public = null,Object? portal = null,Object? region = null,Object? veil_host = null,Object? veil_port = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,last_seen: null == last_seen ? _self.last_seen : last_seen // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,cidr: freezed == cidr ? _self.cidr : cidr // ignore: cast_nullable_to_non_nullable
as String?,subnet: null == subnet ? _self.subnet : subnet // ignore: cast_nullable_to_non_nullable
as String,plane: null == plane ? _self.plane : plane // ignore: cast_nullable_to_non_nullable
as String,plane_id: null == plane_id ? _self.plane_id : plane_id // ignore: cast_nullable_to_non_nullable
as String,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,portal: null == portal ? _self.portal : portal // ignore: cast_nullable_to_non_nullable
as bool,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,veil_host: null == veil_host ? _self.veil_host : veil_host // ignore: cast_nullable_to_non_nullable
as String,veil_port: null == veil_port ? _self.veil_port : veil_port // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfluxDetails].
extension ConfluxDetailsPatterns on ConfluxDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfluxDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfluxDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfluxDetails value)  $default,){
final _that = this;
switch (_that) {
case _ConfluxDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfluxDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ConfluxDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  DateTime last_seen,  String user_id,  String? tag,  String? signature,  String? cidr,  String subnet,  String plane,  String plane_id,  bool public,  bool portal,  String region,  String veil_host,  int veil_port)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfluxDetails() when $default != null:
return $default(_that.id,_that.created_at,_that.last_seen,_that.user_id,_that.tag,_that.signature,_that.cidr,_that.subnet,_that.plane,_that.plane_id,_that.public,_that.portal,_that.region,_that.veil_host,_that.veil_port);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  DateTime last_seen,  String user_id,  String? tag,  String? signature,  String? cidr,  String subnet,  String plane,  String plane_id,  bool public,  bool portal,  String region,  String veil_host,  int veil_port)  $default,) {final _that = this;
switch (_that) {
case _ConfluxDetails():
return $default(_that.id,_that.created_at,_that.last_seen,_that.user_id,_that.tag,_that.signature,_that.cidr,_that.subnet,_that.plane,_that.plane_id,_that.public,_that.portal,_that.region,_that.veil_host,_that.veil_port);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  DateTime last_seen,  String user_id,  String? tag,  String? signature,  String? cidr,  String subnet,  String plane,  String plane_id,  bool public,  bool portal,  String region,  String veil_host,  int veil_port)?  $default,) {final _that = this;
switch (_that) {
case _ConfluxDetails() when $default != null:
return $default(_that.id,_that.created_at,_that.last_seen,_that.user_id,_that.tag,_that.signature,_that.cidr,_that.subnet,_that.plane,_that.plane_id,_that.public,_that.portal,_that.region,_that.veil_host,_that.veil_port);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfluxDetails implements ConfluxDetails {
   _ConfluxDetails({required this.id, required this.created_at, required this.last_seen, required this.user_id, this.tag, this.signature, this.cidr, required this.subnet, required this.plane, required this.plane_id, required this.public, required this.portal, required this.region, required this.veil_host, required this.veil_port});
  factory _ConfluxDetails.fromJson(Map<String, dynamic> json) => _$ConfluxDetailsFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  DateTime last_seen;
@override final  String user_id;
@override final  String? tag;
@override final  String? signature;
@override final  String? cidr;
@override final  String subnet;
@override final  String plane;
@override final  String plane_id;
@override final  bool public;
@override final  bool portal;
@override final  String region;
@override final  String veil_host;
@override final  int veil_port;

/// Create a copy of ConfluxDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfluxDetailsCopyWith<_ConfluxDetails> get copyWith => __$ConfluxDetailsCopyWithImpl<_ConfluxDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfluxDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfluxDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.last_seen, last_seen) || other.last_seen == last_seen)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.cidr, cidr) || other.cidr == cidr)&&(identical(other.subnet, subnet) || other.subnet == subnet)&&(identical(other.plane, plane) || other.plane == plane)&&(identical(other.plane_id, plane_id) || other.plane_id == plane_id)&&(identical(other.public, public) || other.public == public)&&(identical(other.portal, portal) || other.portal == portal)&&(identical(other.region, region) || other.region == region)&&(identical(other.veil_host, veil_host) || other.veil_host == veil_host)&&(identical(other.veil_port, veil_port) || other.veil_port == veil_port));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,last_seen,user_id,tag,signature,cidr,subnet,plane,plane_id,public,portal,region,veil_host,veil_port);

@override
String toString() {
  return 'ConfluxDetails(id: $id, created_at: $created_at, last_seen: $last_seen, user_id: $user_id, tag: $tag, signature: $signature, cidr: $cidr, subnet: $subnet, plane: $plane, plane_id: $plane_id, public: $public, portal: $portal, region: $region, veil_host: $veil_host, veil_port: $veil_port)';
}


}

/// @nodoc
abstract mixin class _$ConfluxDetailsCopyWith<$Res> implements $ConfluxDetailsCopyWith<$Res> {
  factory _$ConfluxDetailsCopyWith(_ConfluxDetails value, $Res Function(_ConfluxDetails) _then) = __$ConfluxDetailsCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, DateTime last_seen, String user_id, String? tag, String? signature, String? cidr, String subnet, String plane, String plane_id, bool public, bool portal, String region, String veil_host, int veil_port
});




}
/// @nodoc
class __$ConfluxDetailsCopyWithImpl<$Res>
    implements _$ConfluxDetailsCopyWith<$Res> {
  __$ConfluxDetailsCopyWithImpl(this._self, this._then);

  final _ConfluxDetails _self;
  final $Res Function(_ConfluxDetails) _then;

/// Create a copy of ConfluxDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? last_seen = null,Object? user_id = null,Object? tag = freezed,Object? signature = freezed,Object? cidr = freezed,Object? subnet = null,Object? plane = null,Object? plane_id = null,Object? public = null,Object? portal = null,Object? region = null,Object? veil_host = null,Object? veil_port = null,}) {
  return _then(_ConfluxDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,last_seen: null == last_seen ? _self.last_seen : last_seen // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,cidr: freezed == cidr ? _self.cidr : cidr // ignore: cast_nullable_to_non_nullable
as String?,subnet: null == subnet ? _self.subnet : subnet // ignore: cast_nullable_to_non_nullable
as String,plane: null == plane ? _self.plane : plane // ignore: cast_nullable_to_non_nullable
as String,plane_id: null == plane_id ? _self.plane_id : plane_id // ignore: cast_nullable_to_non_nullable
as String,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,portal: null == portal ? _self.portal : portal // ignore: cast_nullable_to_non_nullable
as bool,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,veil_host: null == veil_host ? _self.veil_host : veil_host // ignore: cast_nullable_to_non_nullable
as String,veil_port: null == veil_port ? _self.veil_port : veil_port // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
