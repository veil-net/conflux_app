// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamMember {

 String get id; DateTime get created_at; String get team_id; String get user_id;
/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMemberCopyWith<TeamMember> get copyWith => _$TeamMemberCopyWithImpl<TeamMember>(this as TeamMember, _$identity);

  /// Serializes this TeamMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMember&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.team_id, team_id) || other.team_id == team_id)&&(identical(other.user_id, user_id) || other.user_id == user_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,team_id,user_id);

@override
String toString() {
  return 'TeamMember(id: $id, created_at: $created_at, team_id: $team_id, user_id: $user_id)';
}


}

/// @nodoc
abstract mixin class $TeamMemberCopyWith<$Res>  {
  factory $TeamMemberCopyWith(TeamMember value, $Res Function(TeamMember) _then) = _$TeamMemberCopyWithImpl;
@useResult
$Res call({
 String id, DateTime created_at, String team_id, String user_id
});




}
/// @nodoc
class _$TeamMemberCopyWithImpl<$Res>
    implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._self, this._then);

  final TeamMember _self;
  final $Res Function(TeamMember) _then;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? created_at = null,Object? team_id = null,Object? user_id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,team_id: null == team_id ? _self.team_id : team_id // ignore: cast_nullable_to_non_nullable
as String,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamMember].
extension TeamMemberPatterns on TeamMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamMember value)  $default,){
final _that = this;
switch (_that) {
case _TeamMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamMember value)?  $default,){
final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String team_id,  String user_id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
return $default(_that.id,_that.created_at,_that.team_id,_that.user_id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime created_at,  String team_id,  String user_id)  $default,) {final _that = this;
switch (_that) {
case _TeamMember():
return $default(_that.id,_that.created_at,_that.team_id,_that.user_id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime created_at,  String team_id,  String user_id)?  $default,) {final _that = this;
switch (_that) {
case _TeamMember() when $default != null:
return $default(_that.id,_that.created_at,_that.team_id,_that.user_id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamMember implements TeamMember {
   _TeamMember({required this.id, required this.created_at, required this.team_id, required this.user_id});
  factory _TeamMember.fromJson(Map<String, dynamic> json) => _$TeamMemberFromJson(json);

@override final  String id;
@override final  DateTime created_at;
@override final  String team_id;
@override final  String user_id;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamMemberCopyWith<_TeamMember> get copyWith => __$TeamMemberCopyWithImpl<_TeamMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamMember&&(identical(other.id, id) || other.id == id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.team_id, team_id) || other.team_id == team_id)&&(identical(other.user_id, user_id) || other.user_id == user_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,created_at,team_id,user_id);

@override
String toString() {
  return 'TeamMember(id: $id, created_at: $created_at, team_id: $team_id, user_id: $user_id)';
}


}

/// @nodoc
abstract mixin class _$TeamMemberCopyWith<$Res> implements $TeamMemberCopyWith<$Res> {
  factory _$TeamMemberCopyWith(_TeamMember value, $Res Function(_TeamMember) _then) = __$TeamMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime created_at, String team_id, String user_id
});




}
/// @nodoc
class __$TeamMemberCopyWithImpl<$Res>
    implements _$TeamMemberCopyWith<$Res> {
  __$TeamMemberCopyWithImpl(this._self, this._then);

  final _TeamMember _self;
  final $Res Function(_TeamMember) _then;

/// Create a copy of TeamMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? created_at = null,Object? team_id = null,Object? user_id = null,}) {
  return _then(_TeamMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime,team_id: null == team_id ? _self.team_id : team_id // ignore: cast_nullable_to_non_nullable
as String,user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
