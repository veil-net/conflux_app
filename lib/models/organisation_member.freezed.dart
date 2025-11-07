// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organisation_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrganisationMember {

 String get organisation_id; String get organisation_name; String get organisation_website; String get organisation_email; bool get organisation_owner; String get team_id; String get team_name; String get team_email; bool get team_owner; String get user_id; String get display_name; String get email; String? get plane_id;
/// Create a copy of OrganisationMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganisationMemberCopyWith<OrganisationMember> get copyWith => _$OrganisationMemberCopyWithImpl<OrganisationMember>(this as OrganisationMember, _$identity);

  /// Serializes this OrganisationMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganisationMember&&(identical(other.organisation_id, organisation_id) || other.organisation_id == organisation_id)&&(identical(other.organisation_name, organisation_name) || other.organisation_name == organisation_name)&&(identical(other.organisation_website, organisation_website) || other.organisation_website == organisation_website)&&(identical(other.organisation_email, organisation_email) || other.organisation_email == organisation_email)&&(identical(other.organisation_owner, organisation_owner) || other.organisation_owner == organisation_owner)&&(identical(other.team_id, team_id) || other.team_id == team_id)&&(identical(other.team_name, team_name) || other.team_name == team_name)&&(identical(other.team_email, team_email) || other.team_email == team_email)&&(identical(other.team_owner, team_owner) || other.team_owner == team_owner)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.display_name, display_name) || other.display_name == display_name)&&(identical(other.email, email) || other.email == email)&&(identical(other.plane_id, plane_id) || other.plane_id == plane_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,organisation_id,organisation_name,organisation_website,organisation_email,organisation_owner,team_id,team_name,team_email,team_owner,user_id,display_name,email,plane_id);

@override
String toString() {
  return 'OrganisationMember(organisation_id: $organisation_id, organisation_name: $organisation_name, organisation_website: $organisation_website, organisation_email: $organisation_email, organisation_owner: $organisation_owner, team_id: $team_id, team_name: $team_name, team_email: $team_email, team_owner: $team_owner, user_id: $user_id, display_name: $display_name, email: $email, plane_id: $plane_id)';
}


}

/// @nodoc
abstract mixin class $OrganisationMemberCopyWith<$Res>  {
  factory $OrganisationMemberCopyWith(OrganisationMember value, $Res Function(OrganisationMember) _then) = _$OrganisationMemberCopyWithImpl;
@useResult
$Res call({
 String organisation_id, String organisation_name, String organisation_website, String organisation_email, bool organisation_owner, String team_id, String team_name, String team_email, bool team_owner, String user_id, String display_name, String email, String? plane_id
});




}
/// @nodoc
class _$OrganisationMemberCopyWithImpl<$Res>
    implements $OrganisationMemberCopyWith<$Res> {
  _$OrganisationMemberCopyWithImpl(this._self, this._then);

  final OrganisationMember _self;
  final $Res Function(OrganisationMember) _then;

/// Create a copy of OrganisationMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? organisation_id = null,Object? organisation_name = null,Object? organisation_website = null,Object? organisation_email = null,Object? organisation_owner = null,Object? team_id = null,Object? team_name = null,Object? team_email = null,Object? team_owner = null,Object? user_id = null,Object? display_name = null,Object? email = null,Object? plane_id = freezed,}) {
  return _then(_self.copyWith(
organisation_id: null == organisation_id ? _self.organisation_id : organisation_id // ignore: cast_nullable_to_non_nullable
as String,organisation_name: null == organisation_name ? _self.organisation_name : organisation_name // ignore: cast_nullable_to_non_nullable
as String,organisation_website: null == organisation_website ? _self.organisation_website : organisation_website // ignore: cast_nullable_to_non_nullable
as String,organisation_email: null == organisation_email ? _self.organisation_email : organisation_email // ignore: cast_nullable_to_non_nullable
as String,organisation_owner: null == organisation_owner ? _self.organisation_owner : organisation_owner // ignore: cast_nullable_to_non_nullable
as bool,team_id: null == team_id ? _self.team_id : team_id // ignore: cast_nullable_to_non_nullable
as String,team_name: null == team_name ? _self.team_name : team_name // ignore: cast_nullable_to_non_nullable
as String,team_email: null == team_email ? _self.team_email : team_email // ignore: cast_nullable_to_non_nullable
as String,team_owner: null == team_owner ? _self.team_owner : team_owner // ignore: cast_nullable_to_non_nullable
as bool,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,display_name: null == display_name ? _self.display_name : display_name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,plane_id: freezed == plane_id ? _self.plane_id : plane_id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrganisationMember].
extension OrganisationMemberPatterns on OrganisationMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganisationMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganisationMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganisationMember value)  $default,){
final _that = this;
switch (_that) {
case _OrganisationMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganisationMember value)?  $default,){
final _that = this;
switch (_that) {
case _OrganisationMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String organisation_id,  String organisation_name,  String organisation_website,  String organisation_email,  bool organisation_owner,  String team_id,  String team_name,  String team_email,  bool team_owner,  String user_id,  String display_name,  String email,  String? plane_id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganisationMember() when $default != null:
return $default(_that.organisation_id,_that.organisation_name,_that.organisation_website,_that.organisation_email,_that.organisation_owner,_that.team_id,_that.team_name,_that.team_email,_that.team_owner,_that.user_id,_that.display_name,_that.email,_that.plane_id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String organisation_id,  String organisation_name,  String organisation_website,  String organisation_email,  bool organisation_owner,  String team_id,  String team_name,  String team_email,  bool team_owner,  String user_id,  String display_name,  String email,  String? plane_id)  $default,) {final _that = this;
switch (_that) {
case _OrganisationMember():
return $default(_that.organisation_id,_that.organisation_name,_that.organisation_website,_that.organisation_email,_that.organisation_owner,_that.team_id,_that.team_name,_that.team_email,_that.team_owner,_that.user_id,_that.display_name,_that.email,_that.plane_id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String organisation_id,  String organisation_name,  String organisation_website,  String organisation_email,  bool organisation_owner,  String team_id,  String team_name,  String team_email,  bool team_owner,  String user_id,  String display_name,  String email,  String? plane_id)?  $default,) {final _that = this;
switch (_that) {
case _OrganisationMember() when $default != null:
return $default(_that.organisation_id,_that.organisation_name,_that.organisation_website,_that.organisation_email,_that.organisation_owner,_that.team_id,_that.team_name,_that.team_email,_that.team_owner,_that.user_id,_that.display_name,_that.email,_that.plane_id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrganisationMember implements OrganisationMember {
   _OrganisationMember({required this.organisation_id, required this.organisation_name, required this.organisation_website, required this.organisation_email, required this.organisation_owner, required this.team_id, required this.team_name, required this.team_email, required this.team_owner, required this.user_id, required this.display_name, required this.email, required this.plane_id});
  factory _OrganisationMember.fromJson(Map<String, dynamic> json) => _$OrganisationMemberFromJson(json);

@override final  String organisation_id;
@override final  String organisation_name;
@override final  String organisation_website;
@override final  String organisation_email;
@override final  bool organisation_owner;
@override final  String team_id;
@override final  String team_name;
@override final  String team_email;
@override final  bool team_owner;
@override final  String user_id;
@override final  String display_name;
@override final  String email;
@override final  String? plane_id;

/// Create a copy of OrganisationMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganisationMemberCopyWith<_OrganisationMember> get copyWith => __$OrganisationMemberCopyWithImpl<_OrganisationMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganisationMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganisationMember&&(identical(other.organisation_id, organisation_id) || other.organisation_id == organisation_id)&&(identical(other.organisation_name, organisation_name) || other.organisation_name == organisation_name)&&(identical(other.organisation_website, organisation_website) || other.organisation_website == organisation_website)&&(identical(other.organisation_email, organisation_email) || other.organisation_email == organisation_email)&&(identical(other.organisation_owner, organisation_owner) || other.organisation_owner == organisation_owner)&&(identical(other.team_id, team_id) || other.team_id == team_id)&&(identical(other.team_name, team_name) || other.team_name == team_name)&&(identical(other.team_email, team_email) || other.team_email == team_email)&&(identical(other.team_owner, team_owner) || other.team_owner == team_owner)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.display_name, display_name) || other.display_name == display_name)&&(identical(other.email, email) || other.email == email)&&(identical(other.plane_id, plane_id) || other.plane_id == plane_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,organisation_id,organisation_name,organisation_website,organisation_email,organisation_owner,team_id,team_name,team_email,team_owner,user_id,display_name,email,plane_id);

@override
String toString() {
  return 'OrganisationMember(organisation_id: $organisation_id, organisation_name: $organisation_name, organisation_website: $organisation_website, organisation_email: $organisation_email, organisation_owner: $organisation_owner, team_id: $team_id, team_name: $team_name, team_email: $team_email, team_owner: $team_owner, user_id: $user_id, display_name: $display_name, email: $email, plane_id: $plane_id)';
}


}

/// @nodoc
abstract mixin class _$OrganisationMemberCopyWith<$Res> implements $OrganisationMemberCopyWith<$Res> {
  factory _$OrganisationMemberCopyWith(_OrganisationMember value, $Res Function(_OrganisationMember) _then) = __$OrganisationMemberCopyWithImpl;
@override @useResult
$Res call({
 String organisation_id, String organisation_name, String organisation_website, String organisation_email, bool organisation_owner, String team_id, String team_name, String team_email, bool team_owner, String user_id, String display_name, String email, String? plane_id
});




}
/// @nodoc
class __$OrganisationMemberCopyWithImpl<$Res>
    implements _$OrganisationMemberCopyWith<$Res> {
  __$OrganisationMemberCopyWithImpl(this._self, this._then);

  final _OrganisationMember _self;
  final $Res Function(_OrganisationMember) _then;

/// Create a copy of OrganisationMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? organisation_id = null,Object? organisation_name = null,Object? organisation_website = null,Object? organisation_email = null,Object? organisation_owner = null,Object? team_id = null,Object? team_name = null,Object? team_email = null,Object? team_owner = null,Object? user_id = null,Object? display_name = null,Object? email = null,Object? plane_id = freezed,}) {
  return _then(_OrganisationMember(
organisation_id: null == organisation_id ? _self.organisation_id : organisation_id // ignore: cast_nullable_to_non_nullable
as String,organisation_name: null == organisation_name ? _self.organisation_name : organisation_name // ignore: cast_nullable_to_non_nullable
as String,organisation_website: null == organisation_website ? _self.organisation_website : organisation_website // ignore: cast_nullable_to_non_nullable
as String,organisation_email: null == organisation_email ? _self.organisation_email : organisation_email // ignore: cast_nullable_to_non_nullable
as String,organisation_owner: null == organisation_owner ? _self.organisation_owner : organisation_owner // ignore: cast_nullable_to_non_nullable
as bool,team_id: null == team_id ? _self.team_id : team_id // ignore: cast_nullable_to_non_nullable
as String,team_name: null == team_name ? _self.team_name : team_name // ignore: cast_nullable_to_non_nullable
as String,team_email: null == team_email ? _self.team_email : team_email // ignore: cast_nullable_to_non_nullable
as String,team_owner: null == team_owner ? _self.team_owner : team_owner // ignore: cast_nullable_to_non_nullable
as bool,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,display_name: null == display_name ? _self.display_name : display_name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,plane_id: freezed == plane_id ? _self.plane_id : plane_id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
