// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organisation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Organisation {

 String get id; DateTime get created_at; String get user_id; String get name; String? get email; String? get website;
/// Create a copy of Organisation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganisationCopyWith<Organisation> get copyWith => _$OrganisationCopyWithImpl<Organisation>(this as Organisation, _$identity);

  /// Serializes this Organisation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Organisation&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,name,email,website);

@override
String toString() {
  return 'Organisation(id: $id, created_at: $created_at, user_id: $user_id, name: $name, email: $email, website: $website)';
}


}

/// @nodoc
abstract mixin class $OrganisationCopyWith<$Res>  {
  factory $OrganisationCopyWith(Organisation value, $Res Function(Organisation) _then) = _$OrganisationCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String user_id, String name, String? email, String? website
});




}
/// @nodoc
class _$OrganisationCopyWithImpl<$Res>
    implements $OrganisationCopyWith<$Res> {
  _$OrganisationCopyWithImpl(this._self, this._then);

  final Organisation _self;
  final $Res Function(Organisation) _then;

/// Create a copy of Organisation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? name = null,Object? email = freezed,Object? website = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Organisation].
extension OrganisationPatterns on Organisation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Organisation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Organisation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Organisation value)  $default,){
final _that = this;
switch (_that) {
case _Organisation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Organisation value)?  $default,){
final _that = this;
switch (_that) {
case _Organisation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String name,  String? email,  String? website)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Organisation() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.name,_that.email,_that.website);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String name,  String? email,  String? website)  $default,) {final _that = this;
switch (_that) {
case _Organisation():
return $default(_that.id,_that.created_at,_that.user_id,_that.name,_that.email,_that.website);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String user_id,  String name,  String? email,  String? website)?  $default,) {final _that = this;
switch (_that) {
case _Organisation() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.name,_that.email,_that.website);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Organisation implements Organisation {
   _Organisation({required this.id, required this.created_at, required this.user_id, required this.name, this.email, this.website});
  factory _Organisation.fromJson(Map<String, dynamic> json) => _$OrganisationFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  String user_id;
@override final  String name;
@override final  String? email;
@override final  String? website;

/// Create a copy of Organisation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganisationCopyWith<_Organisation> get copyWith => __$OrganisationCopyWithImpl<_Organisation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganisationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Organisation&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,name,email,website);

@override
String toString() {
  return 'Organisation(id: $id, created_at: $created_at, user_id: $user_id, name: $name, email: $email, website: $website)';
}


}

/// @nodoc
abstract mixin class _$OrganisationCopyWith<$Res> implements $OrganisationCopyWith<$Res> {
  factory _$OrganisationCopyWith(_Organisation value, $Res Function(_Organisation) _then) = __$OrganisationCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String user_id, String name, String? email, String? website
});




}
/// @nodoc
class __$OrganisationCopyWithImpl<$Res>
    implements _$OrganisationCopyWith<$Res> {
  __$OrganisationCopyWithImpl(this._self, this._then);

  final _Organisation _self;
  final $Res Function(_Organisation) _then;

/// Create a copy of Organisation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? name = null,Object? email = freezed,Object? website = freezed,}) {
  return _then(_Organisation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
