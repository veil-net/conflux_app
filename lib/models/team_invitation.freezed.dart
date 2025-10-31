// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamInvitation {

 String get id; DateTime get created_at; String get user_id; String get organisation_id; String get organisation_name; String get team_id; String get team_name; String get invited_user; String get invited_user_email; String get user_email; String get status;
/// Create a copy of TeamInvitation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamInvitationCopyWith<TeamInvitation> get copyWith => _$TeamInvitationCopyWithImpl<TeamInvitation>(this as TeamInvitation, _$identity);

  /// Serializes this TeamInvitation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamInvitation&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.organisation_id, organisation_id) || other.organisation_id == organisation_id)&&(identical(other.organisation_name, organisation_name) || other.organisation_name == organisation_name)&&(identical(other.team_id, team_id) || other.team_id == team_id)&&(identical(other.team_name, team_name) || other.team_name == team_name)&&(identical(other.invited_user, invited_user) || other.invited_user == invited_user)&&(identical(other.invited_user_email, invited_user_email) || other.invited_user_email == invited_user_email)&&(identical(other.user_email, user_email) || other.user_email == user_email)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,organisation_id,organisation_name,team_id,team_name,invited_user,invited_user_email,user_email,status);

@override
String toString() {
  return 'TeamInvitation(id: $id, created_at: $created_at, user_id: $user_id, organisation_id: $organisation_id, organisation_name: $organisation_name, team_id: $team_id, team_name: $team_name, invited_user: $invited_user, invited_user_email: $invited_user_email, user_email: $user_email, status: $status)';
}


}

/// @nodoc
abstract mixin class $TeamInvitationCopyWith<$Res>  {
  factory $TeamInvitationCopyWith(TeamInvitation value, $Res Function(TeamInvitation) _then) = _$TeamInvitationCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String user_id, String organisation_id, String organisation_name, String team_id, String team_name, String invited_user, String invited_user_email, String user_email, String status
});




}
/// @nodoc
class _$TeamInvitationCopyWithImpl<$Res>
    implements $TeamInvitationCopyWith<$Res> {
  _$TeamInvitationCopyWithImpl(this._self, this._then);

  final TeamInvitation _self;
  final $Res Function(TeamInvitation) _then;

/// Create a copy of TeamInvitation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? organisation_id = null,Object? organisation_name = null,Object? team_id = null,Object? team_name = null,Object? invited_user = null,Object? invited_user_email = null,Object? user_email = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,organisation_id: null == organisation_id ? _self.organisation_id : organisation_id // ignore: cast_nullable_to_non_nullable
as String,organisation_name: null == organisation_name ? _self.organisation_name : organisation_name // ignore: cast_nullable_to_non_nullable
as String,team_id: null == team_id ? _self.team_id : team_id // ignore: cast_nullable_to_non_nullable
as String,team_name: null == team_name ? _self.team_name : team_name // ignore: cast_nullable_to_non_nullable
as String,invited_user: null == invited_user ? _self.invited_user : invited_user // ignore: cast_nullable_to_non_nullable
as String,invited_user_email: null == invited_user_email ? _self.invited_user_email : invited_user_email // ignore: cast_nullable_to_non_nullable
as String,user_email: null == user_email ? _self.user_email : user_email // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamInvitation].
extension TeamInvitationPatterns on TeamInvitation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamInvitation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamInvitation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamInvitation value)  $default,){
final _that = this;
switch (_that) {
case _TeamInvitation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamInvitation value)?  $default,){
final _that = this;
switch (_that) {
case _TeamInvitation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String organisation_id,  String organisation_name,  String team_id,  String team_name,  String invited_user,  String invited_user_email,  String user_email,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamInvitation() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.organisation_id,_that.organisation_name,_that.team_id,_that.team_name,_that.invited_user,_that.invited_user_email,_that.user_email,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String user_id,  String organisation_id,  String organisation_name,  String team_id,  String team_name,  String invited_user,  String invited_user_email,  String user_email,  String status)  $default,) {final _that = this;
switch (_that) {
case _TeamInvitation():
return $default(_that.id,_that.created_at,_that.user_id,_that.organisation_id,_that.organisation_name,_that.team_id,_that.team_name,_that.invited_user,_that.invited_user_email,_that.user_email,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String user_id,  String organisation_id,  String organisation_name,  String team_id,  String team_name,  String invited_user,  String invited_user_email,  String user_email,  String status)?  $default,) {final _that = this;
switch (_that) {
case _TeamInvitation() when $default != null:
return $default(_that.id,_that.created_at,_that.user_id,_that.organisation_id,_that.organisation_name,_that.team_id,_that.team_name,_that.invited_user,_that.invited_user_email,_that.user_email,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamInvitation implements TeamInvitation {
   _TeamInvitation({required this.id, required this.created_at, required this.user_id, required this.organisation_id, required this.organisation_name, required this.team_id, required this.team_name, required this.invited_user, required this.invited_user_email, required this.user_email, required this.status});
  factory _TeamInvitation.fromJson(Map<String, dynamic> json) => _$TeamInvitationFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  String user_id;
@override final  String organisation_id;
@override final  String organisation_name;
@override final  String team_id;
@override final  String team_name;
@override final  String invited_user;
@override final  String invited_user_email;
@override final  String user_email;
@override final  String status;

/// Create a copy of TeamInvitation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamInvitationCopyWith<_TeamInvitation> get copyWith => __$TeamInvitationCopyWithImpl<_TeamInvitation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamInvitationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamInvitation&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.organisation_id, organisation_id) || other.organisation_id == organisation_id)&&(identical(other.organisation_name, organisation_name) || other.organisation_name == organisation_name)&&(identical(other.team_id, team_id) || other.team_id == team_id)&&(identical(other.team_name, team_name) || other.team_name == team_name)&&(identical(other.invited_user, invited_user) || other.invited_user == invited_user)&&(identical(other.invited_user_email, invited_user_email) || other.invited_user_email == invited_user_email)&&(identical(other.user_email, user_email) || other.user_email == user_email)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,user_id,organisation_id,organisation_name,team_id,team_name,invited_user,invited_user_email,user_email,status);

@override
String toString() {
  return 'TeamInvitation(id: $id, created_at: $created_at, user_id: $user_id, organisation_id: $organisation_id, organisation_name: $organisation_name, team_id: $team_id, team_name: $team_name, invited_user: $invited_user, invited_user_email: $invited_user_email, user_email: $user_email, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TeamInvitationCopyWith<$Res> implements $TeamInvitationCopyWith<$Res> {
  factory _$TeamInvitationCopyWith(_TeamInvitation value, $Res Function(_TeamInvitation) _then) = __$TeamInvitationCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String user_id, String organisation_id, String organisation_name, String team_id, String team_name, String invited_user, String invited_user_email, String user_email, String status
});




}
/// @nodoc
class __$TeamInvitationCopyWithImpl<$Res>
    implements _$TeamInvitationCopyWith<$Res> {
  __$TeamInvitationCopyWithImpl(this._self, this._then);

  final _TeamInvitation _self;
  final $Res Function(_TeamInvitation) _then;

/// Create a copy of TeamInvitation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? user_id = null,Object? organisation_id = null,Object? organisation_name = null,Object? team_id = null,Object? team_name = null,Object? invited_user = null,Object? invited_user_email = null,Object? user_email = null,Object? status = null,}) {
  return _then(_TeamInvitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,organisation_id: null == organisation_id ? _self.organisation_id : organisation_id // ignore: cast_nullable_to_non_nullable
as String,organisation_name: null == organisation_name ? _self.organisation_name : organisation_name // ignore: cast_nullable_to_non_nullable
as String,team_id: null == team_id ? _self.team_id : team_id // ignore: cast_nullable_to_non_nullable
as String,team_name: null == team_name ? _self.team_name : team_name // ignore: cast_nullable_to_non_nullable
as String,invited_user: null == invited_user ? _self.invited_user : invited_user // ignore: cast_nullable_to_non_nullable
as String,invited_user_email: null == invited_user_email ? _self.invited_user_email : invited_user_email // ignore: cast_nullable_to_non_nullable
as String,user_email: null == user_email ? _self.user_email : user_email // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
