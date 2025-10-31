// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'veil.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Veil {

 String get id; DateTime get created_at; String get name; String get region; String get host; int get port; bool get public;
/// Create a copy of Veil
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VeilCopyWith<Veil> get copyWith => _$VeilCopyWithImpl<Veil>(this as Veil, _$identity);

  /// Serializes this Veil to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Veil&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.name, name) || other.name == name)&&(identical(other.region, region) || other.region == region)&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.public, public) || other.public == public));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,name,region,host,port,public);

@override
String toString() {
  return 'Veil(id: $id, created_at: $created_at, name: $name, region: $region, host: $host, port: $port, public: $public)';
}


}

/// @nodoc
abstract mixin class $VeilCopyWith<$Res>  {
  factory $VeilCopyWith(Veil value, $Res Function(Veil) _then) = _$VeilCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String name, String region, String host, int port, bool public
});




}
/// @nodoc
class _$VeilCopyWithImpl<$Res>
    implements $VeilCopyWith<$Res> {
  _$VeilCopyWithImpl(this._self, this._then);

  final Veil _self;
  final $Res Function(Veil) _then;

/// Create a copy of Veil
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? name = null,Object? region = null,Object? host = null,Object? port = null,Object? public = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Veil].
extension VeilPatterns on Veil {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Veil value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Veil() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Veil value)  $default,){
final _that = this;
switch (_that) {
case _Veil():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Veil value)?  $default,){
final _that = this;
switch (_that) {
case _Veil() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String name,  String region,  String host,  int port,  bool public)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Veil() when $default != null:
return $default(_that.id,_that.created_at,_that.name,_that.region,_that.host,_that.port,_that.public);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String name,  String region,  String host,  int port,  bool public)  $default,) {final _that = this;
switch (_that) {
case _Veil():
return $default(_that.id,_that.created_at,_that.name,_that.region,_that.host,_that.port,_that.public);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String name,  String region,  String host,  int port,  bool public)?  $default,) {final _that = this;
switch (_that) {
case _Veil() when $default != null:
return $default(_that.id,_that.created_at,_that.name,_that.region,_that.host,_that.port,_that.public);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Veil implements Veil {
   _Veil({required this.id, required this.created_at, required this.name, required this.region, required this.host, required this.port, required this.public});
  factory _Veil.fromJson(Map<String, dynamic> json) => _$VeilFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  String name;
@override final  String region;
@override final  String host;
@override final  int port;
@override final  bool public;

/// Create a copy of Veil
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VeilCopyWith<_Veil> get copyWith => __$VeilCopyWithImpl<_Veil>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VeilToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Veil&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.name, name) || other.name == name)&&(identical(other.region, region) || other.region == region)&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.public, public) || other.public == public));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,name,region,host,port,public);

@override
String toString() {
  return 'Veil(id: $id, created_at: $created_at, name: $name, region: $region, host: $host, port: $port, public: $public)';
}


}

/// @nodoc
abstract mixin class _$VeilCopyWith<$Res> implements $VeilCopyWith<$Res> {
  factory _$VeilCopyWith(_Veil value, $Res Function(_Veil) _then) = __$VeilCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String name, String region, String host, int port, bool public
});




}
/// @nodoc
class __$VeilCopyWithImpl<$Res>
    implements _$VeilCopyWith<$Res> {
  __$VeilCopyWithImpl(this._self, this._then);

  final _Veil _self;
  final $Res Function(_Veil) _then;

/// Create a copy of Veil
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? name = null,Object? region = null,Object? host = null,Object? port = null,Object? public = null,}) {
  return _then(_Veil(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
