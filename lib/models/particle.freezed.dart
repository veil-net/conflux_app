// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'particle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Particle {

 double get x; double get current_x; double get y; double get current_y; double get radius_x; double get radius_y; double get size; double get opacity; int get direction;
/// Create a copy of Particle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticleCopyWith<Particle> get copyWith => _$ParticleCopyWithImpl<Particle>(this as Particle, _$identity);

  /// Serializes this Particle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Particle&&(identical(other.x, x) || other.x == x)&&(identical(other.current_x, current_x) || other.current_x == current_x)&&(identical(other.y, y) || other.y == y)&&(identical(other.current_y, current_y) || other.current_y == current_y)&&(identical(other.radius_x, radius_x) || other.radius_x == radius_x)&&(identical(other.radius_y, radius_y) || other.radius_y == radius_y)&&(identical(other.size, size) || other.size == size)&&(identical(other.opacity, opacity) || other.opacity == opacity)&&(identical(other.direction, direction) || other.direction == direction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,current_x,y,current_y,radius_x,radius_y,size,opacity,direction);

@override
String toString() {
  return 'Particle(x: $x, current_x: $current_x, y: $y, current_y: $current_y, radius_x: $radius_x, radius_y: $radius_y, size: $size, opacity: $opacity, direction: $direction)';
}


}

/// @nodoc
abstract mixin class $ParticleCopyWith<$Res>  {
  factory $ParticleCopyWith(Particle value, $Res Function(Particle) _then) = _$ParticleCopyWithImpl;
@useResult
$Res call({
 double x, double current_x, double y, double current_y, double radius_x, double radius_y, double size, double opacity, int direction
});




}
/// @nodoc
class _$ParticleCopyWithImpl<$Res>
    implements $ParticleCopyWith<$Res> {
  _$ParticleCopyWithImpl(this._self, this._then);

  final Particle _self;
  final $Res Function(Particle) _then;

/// Create a copy of Particle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? current_x = null,Object? y = null,Object? current_y = null,Object? radius_x = null,Object? radius_y = null,Object? size = null,Object? opacity = null,Object? direction = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,current_x: null == current_x ? _self.current_x : current_x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,current_y: null == current_y ? _self.current_y : current_y // ignore: cast_nullable_to_non_nullable
as double,radius_x: null == radius_x ? _self.radius_x : radius_x // ignore: cast_nullable_to_non_nullable
as double,radius_y: null == radius_y ? _self.radius_y : radius_y // ignore: cast_nullable_to_non_nullable
as double,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Particle].
extension ParticlePatterns on Particle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Particle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Particle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Particle value)  $default,){
final _that = this;
switch (_that) {
case _Particle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Particle value)?  $default,){
final _that = this;
switch (_that) {
case _Particle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double x,  double current_x,  double y,  double current_y,  double radius_x,  double radius_y,  double size,  double opacity,  int direction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Particle() when $default != null:
return $default(_that.x,_that.current_x,_that.y,_that.current_y,_that.radius_x,_that.radius_y,_that.size,_that.opacity,_that.direction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double x,  double current_x,  double y,  double current_y,  double radius_x,  double radius_y,  double size,  double opacity,  int direction)  $default,) {final _that = this;
switch (_that) {
case _Particle():
return $default(_that.x,_that.current_x,_that.y,_that.current_y,_that.radius_x,_that.radius_y,_that.size,_that.opacity,_that.direction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double x,  double current_x,  double y,  double current_y,  double radius_x,  double radius_y,  double size,  double opacity,  int direction)?  $default,) {final _that = this;
switch (_that) {
case _Particle() when $default != null:
return $default(_that.x,_that.current_x,_that.y,_that.current_y,_that.radius_x,_that.radius_y,_that.size,_that.opacity,_that.direction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Particle implements Particle {
   _Particle({required this.x, this.current_x = 0.0, required this.y, this.current_y = 0.0, required this.radius_x, required this.radius_y, required this.size, required this.opacity, required this.direction});
  factory _Particle.fromJson(Map<String, dynamic> json) => _$ParticleFromJson(json);

@override final  double x;
@override@JsonKey() final  double current_x;
@override final  double y;
@override@JsonKey() final  double current_y;
@override final  double radius_x;
@override final  double radius_y;
@override final  double size;
@override final  double opacity;
@override final  int direction;

/// Create a copy of Particle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticleCopyWith<_Particle> get copyWith => __$ParticleCopyWithImpl<_Particle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Particle&&(identical(other.x, x) || other.x == x)&&(identical(other.current_x, current_x) || other.current_x == current_x)&&(identical(other.y, y) || other.y == y)&&(identical(other.current_y, current_y) || other.current_y == current_y)&&(identical(other.radius_x, radius_x) || other.radius_x == radius_x)&&(identical(other.radius_y, radius_y) || other.radius_y == radius_y)&&(identical(other.size, size) || other.size == size)&&(identical(other.opacity, opacity) || other.opacity == opacity)&&(identical(other.direction, direction) || other.direction == direction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,current_x,y,current_y,radius_x,radius_y,size,opacity,direction);

@override
String toString() {
  return 'Particle(x: $x, current_x: $current_x, y: $y, current_y: $current_y, radius_x: $radius_x, radius_y: $radius_y, size: $size, opacity: $opacity, direction: $direction)';
}


}

/// @nodoc
abstract mixin class _$ParticleCopyWith<$Res> implements $ParticleCopyWith<$Res> {
  factory _$ParticleCopyWith(_Particle value, $Res Function(_Particle) _then) = __$ParticleCopyWithImpl;
@override @useResult
$Res call({
 double x, double current_x, double y, double current_y, double radius_x, double radius_y, double size, double opacity, int direction
});




}
/// @nodoc
class __$ParticleCopyWithImpl<$Res>
    implements _$ParticleCopyWith<$Res> {
  __$ParticleCopyWithImpl(this._self, this._then);

  final _Particle _self;
  final $Res Function(_Particle) _then;

/// Create a copy of Particle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? current_x = null,Object? y = null,Object? current_y = null,Object? radius_x = null,Object? radius_y = null,Object? size = null,Object? opacity = null,Object? direction = null,}) {
  return _then(_Particle(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,current_x: null == current_x ? _self.current_x : current_x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,current_y: null == current_y ? _self.current_y : current_y // ignore: cast_nullable_to_non_nullable
as double,radius_x: null == radius_x ? _self.radius_x : radius_x // ignore: cast_nullable_to_non_nullable
as double,radius_y: null == radius_y ? _self.radius_y : radius_y // ignore: cast_nullable_to_non_nullable
as double,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
