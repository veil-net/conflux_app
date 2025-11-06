// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_memeber_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamMemberDetails {

 String get team_id; String get team_name; String get team_email; bool get team_owner; String get user_id; String get user_email; String? get user_display_name;
/// Create a copy of TeamMemberDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMemberDetailsCopyWith<TeamMemberDetails> get copyWith => _$TeamMemberDetailsCopyWithImpl<TeamMemberDetails>(this as TeamMemberDetails, _$identity);

  /// Serializes this TeamMemberDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMemberDetails&&(identical(other.team_id, team_id) || other.team_id == team_id)&&(identical(other.team_name, team_name) || other.team_name == team_name)&&(identical(other.team_email, team_email) || other.team_email == team_email)&&(identical(other.team_owner, team_owner) || other.team_owner == team_owner)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.user_email, user_email) || other.user_email == user_email)&&(identical(other.user_display_name, user_display_name) || other.user_display_name == user_display_name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,team_id,team_name,team_email,team_owner,user_id,user_email,user_display_name);

@override
String toString() {
  return 'TeamMemberDetails(team_id: $team_id, team_name: $team_name, team_email: $team_email, team_owner: $team_owner, user_id: $user_id, user_email: $user_email, user_display_name: $user_display_name)';
}


}

/// @nodoc
abstract mixin class $TeamMemberDetailsCopyWith<$Res>  {
  factory $TeamMemberDetailsCopyWith(TeamMemberDetails value, $Res Function(TeamMemberDetails) _then) = _$TeamMemberDetailsCopyWithImpl;
@useResult
$Res call({
 String team_id, String team_name, String team_email, bool team_owner, String user_id, String user_email, String? user_display_name
});




}
/// @nodoc
class _$TeamMemberDetailsCopyWithImpl<$Res>
    implements $TeamMemberDetailsCopyWith<$Res> {
  _$TeamMemberDetailsCopyWithImpl(this._self, this._then);

  final TeamMemberDetails _self;
  final $Res Function(TeamMemberDetails) _then;

/// Create a copy of TeamMemberDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? team_id = null,Object? team_name = null,Object? team_email = null,Object? team_owner = null,Object? user_id = null,Object? user_email = null,Object? user_display_name = freezed,}) {
  return _then(_self.copyWith(
team_id: null == team_id ? _self.team_id : team_id // ignore: cast_nullable_to_non_nullable
as String,team_name: null == team_name ? _self.team_name : team_name // ignore: cast_nullable_to_non_nullable
as String,team_email: null == team_email ? _self.team_email : team_email // ignore: cast_nullable_to_non_nullable
as String,team_owner: null == team_owner ? _self.team_owner : team_owner // ignore: cast_nullable_to_non_nullable
as bool,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,user_email: null == user_email ? _self.user_email : user_email // ignore: cast_nullable_to_non_nullable
as String,user_display_name: freezed == user_display_name ? _self.user_display_name : user_display_name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamMemberDetails].
extension TeamMemberDetailsPatterns on TeamMemberDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamMemberDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamMemberDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamMemberDetails value)  $default,){
final _that = this;
switch (_that) {
case _TeamMemberDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamMemberDetails value)?  $default,){
final _that = this;
switch (_that) {
case _TeamMemberDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String team_id,  String team_name,  String team_email,  bool team_owner,  String user_id,  String user_email,  String? user_display_name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamMemberDetails() when $default != null:
return $default(_that.team_id,_that.team_name,_that.team_email,_that.team_owner,_that.user_id,_that.user_email,_that.user_display_name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String team_id,  String team_name,  String team_email,  bool team_owner,  String user_id,  String user_email,  String? user_display_name)  $default,) {final _that = this;
switch (_that) {
case _TeamMemberDetails():
return $default(_that.team_id,_that.team_name,_that.team_email,_that.team_owner,_that.user_id,_that.user_email,_that.user_display_name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String team_id,  String team_name,  String team_email,  bool team_owner,  String user_id,  String user_email,  String? user_display_name)?  $default,) {final _that = this;
switch (_that) {
case _TeamMemberDetails() when $default != null:
return $default(_that.team_id,_that.team_name,_that.team_email,_that.team_owner,_that.user_id,_that.user_email,_that.user_display_name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamMemberDetails implements TeamMemberDetails {
   _TeamMemberDetails({required this.team_id, required this.team_name, required this.team_email, required this.team_owner, required this.user_id, required this.user_email, this.user_display_name});
  factory _TeamMemberDetails.fromJson(Map<String, dynamic> json) => _$TeamMemberDetailsFromJson(json);

@override final  String team_id;
@override final  String team_name;
@override final  String team_email;
@override final  bool team_owner;
@override final  String user_id;
@override final  String user_email;
@override final  String? user_display_name;

/// Create a copy of TeamMemberDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamMemberDetailsCopyWith<_TeamMemberDetails> get copyWith => __$TeamMemberDetailsCopyWithImpl<_TeamMemberDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamMemberDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamMemberDetails&&(identical(other.team_id, team_id) || other.team_id == team_id)&&(identical(other.team_name, team_name) || other.team_name == team_name)&&(identical(other.team_email, team_email) || other.team_email == team_email)&&(identical(other.team_owner, team_owner) || other.team_owner == team_owner)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.user_email, user_email) || other.user_email == user_email)&&(identical(other.user_display_name, user_display_name) || other.user_display_name == user_display_name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,team_id,team_name,team_email,team_owner,user_id,user_email,user_display_name);

@override
String toString() {
  return 'TeamMemberDetails(team_id: $team_id, team_name: $team_name, team_email: $team_email, team_owner: $team_owner, user_id: $user_id, user_email: $user_email, user_display_name: $user_display_name)';
}


}

/// @nodoc
abstract mixin class _$TeamMemberDetailsCopyWith<$Res> implements $TeamMemberDetailsCopyWith<$Res> {
  factory _$TeamMemberDetailsCopyWith(_TeamMemberDetails value, $Res Function(_TeamMemberDetails) _then) = __$TeamMemberDetailsCopyWithImpl;
@override @useResult
$Res call({
 String team_id, String team_name, String team_email, bool team_owner, String user_id, String user_email, String? user_display_name
});




}
/// @nodoc
class __$TeamMemberDetailsCopyWithImpl<$Res>
    implements _$TeamMemberDetailsCopyWith<$Res> {
  __$TeamMemberDetailsCopyWithImpl(this._self, this._then);

  final _TeamMemberDetails _self;
  final $Res Function(_TeamMemberDetails) _then;

/// Create a copy of TeamMemberDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? team_id = null,Object? team_name = null,Object? team_email = null,Object? team_owner = null,Object? user_id = null,Object? user_email = null,Object? user_display_name = freezed,}) {
  return _then(_TeamMemberDetails(
team_id: null == team_id ? _self.team_id : team_id // ignore: cast_nullable_to_non_nullable
as String,team_name: null == team_name ? _self.team_name : team_name // ignore: cast_nullable_to_non_nullable
as String,team_email: null == team_email ? _self.team_email : team_email // ignore: cast_nullable_to_non_nullable
as String,team_owner: null == team_owner ? _self.team_owner : team_owner // ignore: cast_nullable_to_non_nullable
as bool,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,user_email: null == user_email ? _self.user_email : user_email // ignore: cast_nullable_to_non_nullable
as String,user_display_name: freezed == user_display_name ? _self.user_display_name : user_display_name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
