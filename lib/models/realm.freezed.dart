// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'realm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Realm {

 String get id; DateTime get created_at; String get user_id; String get veil_id; String get name; String get subnet; bool get public; String get region; String get veil_host; int get veil_port; String? get subscription; String? get status;
/// Create a copy of Realm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RealmCopyWith<Realm> get copyWith => _$RealmCopyWithImpl<Realm>(this as Realm, _$identity);

  /// Serializes this Realm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Realm&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.veil_id, veil_id) || other.veil_id == veil_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subnet, subnet) || other.subnet == subnet)&&(identical(other.public, public) || other.public == public)&&(identical(other.region, region) || other.region == region)&&(identical(other.veil_host, veil_host) || other.veil_host == veil_host)&&(identical(other.veil_port, veil_port) || other.veil_port == veil_port)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,veil_id,name,subnet,public,region,veil_host,veil_port,subscription,status);

@override
String toString() {
  return 'Realm(id: $id, created_at: $created_at, user_id: $user_id, veil_id: $veil_id, name: $name, subnet: $subnet, public: $public, region: $region, veil_host: $veil_host, veil_port: $veil_port, subscription: $subscription, status: $status)';
}


}

/// @nodoc
abstract mixin class $RealmCopyWith<$Res>  {
  factory $RealmCopyWith(Realm value, $Res Function(Realm) _then) = _$RealmCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String user_id, String veil_id, String name, String subnet, bool public, String region, String veil_host, int veil_port, String? subscription, String? status
});




}
/// @nodoc
class _$RealmCopyWithImpl<$Res>
    implements $RealmCopyWith<$Res> {
  _$RealmCopyWithImpl(this._self, this._then);

  final Realm _self;
  final $Res Function(Realm) _then;

/// Create a copy of Realm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? veil_id = null,Object? name = null,Object? subnet = null,Object? public = null,Object? region = null,Object? veil_host = null,Object? veil_port = null,Object? subscription = freezed,Object? status = freezed,}) {
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
as int,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Realm].
extension RealmPatterns on Realm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Realm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Realm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Realm value)  $default,){
final _that = this;
switch (_that) {
case _Realm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Realm value)?  $default,){
final _that = this;
switch (_that) {
case _Realm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  String region,  String veil_host,  int veil_port,  String? subscription,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Realm() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.region,_that.veil_host,_that.veil_port,_that.subscription,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  String region,  String veil_host,  int veil_port,  String? subscription,  String? status)  $default,) {final _that = this;
switch (_that) {
case _Realm():
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.region,_that.veil_host,_that.veil_port,_that.subscription,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String user_id,  String veil_id,  String name,  String subnet,  bool public,  String region,  String veil_host,  int veil_port,  String? subscription,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _Realm() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.veil_id,_that.name,_that.subnet,_that.public,_that.region,_that.veil_host,_that.veil_port,_that.subscription,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Realm implements Realm {
   _Realm({required this.id, required this.created_at, required this.user_id, required this.veil_id, required this.name, required this.subnet, required this.public, required this.region, required this.veil_host, required this.veil_port, this.subscription, this.status});
  factory _Realm.fromJson(Map<String, dynamic> json) => _$RealmFromJson(json);

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
@override final  String? subscription;
@override final  String? status;

/// Create a copy of Realm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RealmCopyWith<_Realm> get copyWith => __$RealmCopyWithImpl<_Realm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RealmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Realm&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.veil_id, veil_id) || other.veil_id == veil_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subnet, subnet) || other.subnet == subnet)&&(identical(other.public, public) || other.public == public)&&(identical(other.region, region) || other.region == region)&&(identical(other.veil_host, veil_host) || other.veil_host == veil_host)&&(identical(other.veil_port, veil_port) || other.veil_port == veil_port)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,veil_id,name,subnet,public,region,veil_host,veil_port,subscription,status);

@override
String toString() {
  return 'Realm(id: $id, created_at: $created_at, user_id: $user_id, veil_id: $veil_id, name: $name, subnet: $subnet, public: $public, region: $region, veil_host: $veil_host, veil_port: $veil_port, subscription: $subscription, status: $status)';
}


}

/// @nodoc
abstract mixin class _$RealmCopyWith<$Res> implements $RealmCopyWith<$Res> {
  factory _$RealmCopyWith(_Realm value, $Res Function(_Realm) _then) = __$RealmCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String user_id, String veil_id, String name, String subnet, bool public, String region, String veil_host, int veil_port, String? subscription, String? status
});




}
/// @nodoc
class __$RealmCopyWithImpl<$Res>
    implements _$RealmCopyWith<$Res> {
  __$RealmCopyWithImpl(this._self, this._then);

  final _Realm _self;
  final $Res Function(_Realm) _then;

/// Create a copy of Realm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? veil_id = null,Object? name = null,Object? subnet = null,Object? public = null,Object? region = null,Object? veil_host = null,Object? veil_port = null,Object? subscription = freezed,Object? status = freezed,}) {
  return _then(_Realm(
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
as int,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
