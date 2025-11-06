// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionMetadata {

 String get user_id; String get service_tier; String? get type;
/// Create a copy of SubscriptionMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionMetadataCopyWith<SubscriptionMetadata> get copyWith => _$SubscriptionMetadataCopyWithImpl<SubscriptionMetadata>(this as SubscriptionMetadata, _$identity);

  /// Serializes this SubscriptionMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionMetadata&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.service_tier, service_tier) || other.service_tier == service_tier)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user_id,service_tier,type);

@override
String toString() {
  return 'SubscriptionMetadata(user_id: $user_id, service_tier: $service_tier, type: $type)';
}


}

/// @nodoc
abstract mixin class $SubscriptionMetadataCopyWith<$Res>  {
  factory $SubscriptionMetadataCopyWith(SubscriptionMetadata value, $Res Function(SubscriptionMetadata) _then) = _$SubscriptionMetadataCopyWithImpl;
@useResult
$Res call({
 String user_id, String service_tier, String? type
});




}
/// @nodoc
class _$SubscriptionMetadataCopyWithImpl<$Res>
    implements $SubscriptionMetadataCopyWith<$Res> {
  _$SubscriptionMetadataCopyWithImpl(this._self, this._then);

  final SubscriptionMetadata _self;
  final $Res Function(SubscriptionMetadata) _then;

/// Create a copy of SubscriptionMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user_id = null,Object? service_tier = null,Object? type = freezed,}) {
  return _then(_self.copyWith(
user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,service_tier: null == service_tier ? _self.service_tier : service_tier // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionMetadata].
extension SubscriptionMetadataPatterns on SubscriptionMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionMetadata value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String user_id,  String service_tier,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionMetadata() when $default != null:
return $default(_that.user_id,_that.service_tier,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String user_id,  String service_tier,  String? type)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionMetadata():
return $default(_that.user_id,_that.service_tier,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String user_id,  String service_tier,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionMetadata() when $default != null:
return $default(_that.user_id,_that.service_tier,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionMetadata implements SubscriptionMetadata {
   _SubscriptionMetadata({required this.user_id, required this.service_tier, this.type});
  factory _SubscriptionMetadata.fromJson(Map<String, dynamic> json) => _$SubscriptionMetadataFromJson(json);

@override final  String user_id;
@override final  String service_tier;
@override final  String? type;

/// Create a copy of SubscriptionMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionMetadataCopyWith<_SubscriptionMetadata> get copyWith => __$SubscriptionMetadataCopyWithImpl<_SubscriptionMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionMetadata&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.service_tier, service_tier) || other.service_tier == service_tier)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user_id,service_tier,type);

@override
String toString() {
  return 'SubscriptionMetadata(user_id: $user_id, service_tier: $service_tier, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionMetadataCopyWith<$Res> implements $SubscriptionMetadataCopyWith<$Res> {
  factory _$SubscriptionMetadataCopyWith(_SubscriptionMetadata value, $Res Function(_SubscriptionMetadata) _then) = __$SubscriptionMetadataCopyWithImpl;
@override @useResult
$Res call({
 String user_id, String service_tier, String? type
});




}
/// @nodoc
class __$SubscriptionMetadataCopyWithImpl<$Res>
    implements _$SubscriptionMetadataCopyWith<$Res> {
  __$SubscriptionMetadataCopyWithImpl(this._self, this._then);

  final _SubscriptionMetadata _self;
  final $Res Function(_SubscriptionMetadata) _then;

/// Create a copy of SubscriptionMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user_id = null,Object? service_tier = null,Object? type = freezed,}) {
  return _then(_SubscriptionMetadata(
user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,service_tier: null == service_tier ? _self.service_tier : service_tier // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SubscriptionPlan {

 String get id; String? get object; bool get active; int get amount; String? get amount_decimal; String get billing_scheme;@JsonKey(name: 'created')@TimestampConverter() DateTime get created; String get currency; String get interval; int get interval_count; bool get livemode; Map<String, dynamic>? get metadata; String? get meter; String? get nickname; String get product; String? get tiers_mode; String? get transform_usage; int? get trial_period_days; String get usage_type;
/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<SubscriptionPlan> get copyWith => _$SubscriptionPlanCopyWithImpl<SubscriptionPlan>(this as SubscriptionPlan, _$identity);

  /// Serializes this SubscriptionPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.active, active) || other.active == active)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.amount_decimal, amount_decimal) || other.amount_decimal == amount_decimal)&&(identical(other.billing_scheme, billing_scheme) || other.billing_scheme == billing_scheme)&&(identical(other.created, created) || other.created == created)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.interval_count, interval_count) || other.interval_count == interval_count)&&(identical(other.livemode, livemode) || other.livemode == livemode)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.meter, meter) || other.meter == meter)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.product, product) || other.product == product)&&(identical(other.tiers_mode, tiers_mode) || other.tiers_mode == tiers_mode)&&(identical(other.transform_usage, transform_usage) || other.transform_usage == transform_usage)&&(identical(other.trial_period_days, trial_period_days) || other.trial_period_days == trial_period_days)&&(identical(other.usage_type, usage_type) || other.usage_type == usage_type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,object,active,amount,amount_decimal,billing_scheme,created,currency,interval,interval_count,livemode,const DeepCollectionEquality().hash(metadata),meter,nickname,product,tiers_mode,transform_usage,trial_period_days,usage_type]);

@override
String toString() {
  return 'SubscriptionPlan(id: $id, object: $object, active: $active, amount: $amount, amount_decimal: $amount_decimal, billing_scheme: $billing_scheme, created: $created, currency: $currency, interval: $interval, interval_count: $interval_count, livemode: $livemode, metadata: $metadata, meter: $meter, nickname: $nickname, product: $product, tiers_mode: $tiers_mode, transform_usage: $transform_usage, trial_period_days: $trial_period_days, usage_type: $usage_type)';
}


}

/// @nodoc
abstract mixin class $SubscriptionPlanCopyWith<$Res>  {
  factory $SubscriptionPlanCopyWith(SubscriptionPlan value, $Res Function(SubscriptionPlan) _then) = _$SubscriptionPlanCopyWithImpl;
@useResult
$Res call({
 String id, String? object, bool active, int amount, String? amount_decimal, String billing_scheme,@JsonKey(name: 'created')@TimestampConverter() DateTime created, String currency, String interval, int interval_count, bool livemode, Map<String, dynamic>? metadata, String? meter, String? nickname, String product, String? tiers_mode, String? transform_usage, int? trial_period_days, String usage_type
});




}
/// @nodoc
class _$SubscriptionPlanCopyWithImpl<$Res>
    implements $SubscriptionPlanCopyWith<$Res> {
  _$SubscriptionPlanCopyWithImpl(this._self, this._then);

  final SubscriptionPlan _self;
  final $Res Function(SubscriptionPlan) _then;

/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = freezed,Object? active = null,Object? amount = null,Object? amount_decimal = freezed,Object? billing_scheme = null,Object? created = null,Object? currency = null,Object? interval = null,Object? interval_count = null,Object? livemode = null,Object? metadata = freezed,Object? meter = freezed,Object? nickname = freezed,Object? product = null,Object? tiers_mode = freezed,Object? transform_usage = freezed,Object? trial_period_days = freezed,Object? usage_type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,amount_decimal: freezed == amount_decimal ? _self.amount_decimal : amount_decimal // ignore: cast_nullable_to_non_nullable
as String?,billing_scheme: null == billing_scheme ? _self.billing_scheme : billing_scheme // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,interval_count: null == interval_count ? _self.interval_count : interval_count // ignore: cast_nullable_to_non_nullable
as int,livemode: null == livemode ? _self.livemode : livemode // ignore: cast_nullable_to_non_nullable
as bool,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,meter: freezed == meter ? _self.meter : meter // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,tiers_mode: freezed == tiers_mode ? _self.tiers_mode : tiers_mode // ignore: cast_nullable_to_non_nullable
as String?,transform_usage: freezed == transform_usage ? _self.transform_usage : transform_usage // ignore: cast_nullable_to_non_nullable
as String?,trial_period_days: freezed == trial_period_days ? _self.trial_period_days : trial_period_days // ignore: cast_nullable_to_non_nullable
as int?,usage_type: null == usage_type ? _self.usage_type : usage_type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionPlan].
extension SubscriptionPlanPatterns on SubscriptionPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionPlan value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionPlan value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? object,  bool active,  int amount,  String? amount_decimal,  String billing_scheme, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  String currency,  String interval,  int interval_count,  bool livemode,  Map<String, dynamic>? metadata,  String? meter,  String? nickname,  String product,  String? tiers_mode,  String? transform_usage,  int? trial_period_days,  String usage_type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
return $default(_that.id,_that.object,_that.active,_that.amount,_that.amount_decimal,_that.billing_scheme,_that.created,_that.currency,_that.interval,_that.interval_count,_that.livemode,_that.metadata,_that.meter,_that.nickname,_that.product,_that.tiers_mode,_that.transform_usage,_that.trial_period_days,_that.usage_type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? object,  bool active,  int amount,  String? amount_decimal,  String billing_scheme, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  String currency,  String interval,  int interval_count,  bool livemode,  Map<String, dynamic>? metadata,  String? meter,  String? nickname,  String product,  String? tiers_mode,  String? transform_usage,  int? trial_period_days,  String usage_type)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlan():
return $default(_that.id,_that.object,_that.active,_that.amount,_that.amount_decimal,_that.billing_scheme,_that.created,_that.currency,_that.interval,_that.interval_count,_that.livemode,_that.metadata,_that.meter,_that.nickname,_that.product,_that.tiers_mode,_that.transform_usage,_that.trial_period_days,_that.usage_type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? object,  bool active,  int amount,  String? amount_decimal,  String billing_scheme, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  String currency,  String interval,  int interval_count,  bool livemode,  Map<String, dynamic>? metadata,  String? meter,  String? nickname,  String product,  String? tiers_mode,  String? transform_usage,  int? trial_period_days,  String usage_type)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
return $default(_that.id,_that.object,_that.active,_that.amount,_that.amount_decimal,_that.billing_scheme,_that.created,_that.currency,_that.interval,_that.interval_count,_that.livemode,_that.metadata,_that.meter,_that.nickname,_that.product,_that.tiers_mode,_that.transform_usage,_that.trial_period_days,_that.usage_type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionPlan implements SubscriptionPlan {
   _SubscriptionPlan({required this.id, this.object, required this.active, required this.amount, this.amount_decimal, required this.billing_scheme, @JsonKey(name: 'created')@TimestampConverter() required this.created, required this.currency, required this.interval, required this.interval_count, required this.livemode, final  Map<String, dynamic>? metadata, this.meter, this.nickname, required this.product, this.tiers_mode, this.transform_usage, this.trial_period_days, required this.usage_type}): _metadata = metadata;
  factory _SubscriptionPlan.fromJson(Map<String, dynamic> json) => _$SubscriptionPlanFromJson(json);

@override final  String id;
@override final  String? object;
@override final  bool active;
@override final  int amount;
@override final  String? amount_decimal;
@override final  String billing_scheme;
@override@JsonKey(name: 'created')@TimestampConverter() final  DateTime created;
@override final  String currency;
@override final  String interval;
@override final  int interval_count;
@override final  bool livemode;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? meter;
@override final  String? nickname;
@override final  String product;
@override final  String? tiers_mode;
@override final  String? transform_usage;
@override final  int? trial_period_days;
@override final  String usage_type;

/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionPlanCopyWith<_SubscriptionPlan> get copyWith => __$SubscriptionPlanCopyWithImpl<_SubscriptionPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionPlanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.active, active) || other.active == active)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.amount_decimal, amount_decimal) || other.amount_decimal == amount_decimal)&&(identical(other.billing_scheme, billing_scheme) || other.billing_scheme == billing_scheme)&&(identical(other.created, created) || other.created == created)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.interval_count, interval_count) || other.interval_count == interval_count)&&(identical(other.livemode, livemode) || other.livemode == livemode)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.meter, meter) || other.meter == meter)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.product, product) || other.product == product)&&(identical(other.tiers_mode, tiers_mode) || other.tiers_mode == tiers_mode)&&(identical(other.transform_usage, transform_usage) || other.transform_usage == transform_usage)&&(identical(other.trial_period_days, trial_period_days) || other.trial_period_days == trial_period_days)&&(identical(other.usage_type, usage_type) || other.usage_type == usage_type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,object,active,amount,amount_decimal,billing_scheme,created,currency,interval,interval_count,livemode,const DeepCollectionEquality().hash(_metadata),meter,nickname,product,tiers_mode,transform_usage,trial_period_days,usage_type]);

@override
String toString() {
  return 'SubscriptionPlan(id: $id, object: $object, active: $active, amount: $amount, amount_decimal: $amount_decimal, billing_scheme: $billing_scheme, created: $created, currency: $currency, interval: $interval, interval_count: $interval_count, livemode: $livemode, metadata: $metadata, meter: $meter, nickname: $nickname, product: $product, tiers_mode: $tiers_mode, transform_usage: $transform_usage, trial_period_days: $trial_period_days, usage_type: $usage_type)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionPlanCopyWith<$Res> implements $SubscriptionPlanCopyWith<$Res> {
  factory _$SubscriptionPlanCopyWith(_SubscriptionPlan value, $Res Function(_SubscriptionPlan) _then) = __$SubscriptionPlanCopyWithImpl;
@override @useResult
$Res call({
 String id, String? object, bool active, int amount, String? amount_decimal, String billing_scheme,@JsonKey(name: 'created')@TimestampConverter() DateTime created, String currency, String interval, int interval_count, bool livemode, Map<String, dynamic>? metadata, String? meter, String? nickname, String product, String? tiers_mode, String? transform_usage, int? trial_period_days, String usage_type
});




}
/// @nodoc
class __$SubscriptionPlanCopyWithImpl<$Res>
    implements _$SubscriptionPlanCopyWith<$Res> {
  __$SubscriptionPlanCopyWithImpl(this._self, this._then);

  final _SubscriptionPlan _self;
  final $Res Function(_SubscriptionPlan) _then;

/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = freezed,Object? active = null,Object? amount = null,Object? amount_decimal = freezed,Object? billing_scheme = null,Object? created = null,Object? currency = null,Object? interval = null,Object? interval_count = null,Object? livemode = null,Object? metadata = freezed,Object? meter = freezed,Object? nickname = freezed,Object? product = null,Object? tiers_mode = freezed,Object? transform_usage = freezed,Object? trial_period_days = freezed,Object? usage_type = null,}) {
  return _then(_SubscriptionPlan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,amount_decimal: freezed == amount_decimal ? _self.amount_decimal : amount_decimal // ignore: cast_nullable_to_non_nullable
as String?,billing_scheme: null == billing_scheme ? _self.billing_scheme : billing_scheme // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,interval_count: null == interval_count ? _self.interval_count : interval_count // ignore: cast_nullable_to_non_nullable
as int,livemode: null == livemode ? _self.livemode : livemode // ignore: cast_nullable_to_non_nullable
as bool,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,meter: freezed == meter ? _self.meter : meter // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,tiers_mode: freezed == tiers_mode ? _self.tiers_mode : tiers_mode // ignore: cast_nullable_to_non_nullable
as String?,transform_usage: freezed == transform_usage ? _self.transform_usage : transform_usage // ignore: cast_nullable_to_non_nullable
as String?,trial_period_days: freezed == trial_period_days ? _self.trial_period_days : trial_period_days // ignore: cast_nullable_to_non_nullable
as int?,usage_type: null == usage_type ? _self.usage_type : usage_type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SubscriptionPriceRecurring {

 String? get meter; String get interval; String get usage_type; int get interval_count; int? get trial_period_days;
/// Create a copy of SubscriptionPriceRecurring
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPriceRecurringCopyWith<SubscriptionPriceRecurring> get copyWith => _$SubscriptionPriceRecurringCopyWithImpl<SubscriptionPriceRecurring>(this as SubscriptionPriceRecurring, _$identity);

  /// Serializes this SubscriptionPriceRecurring to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPriceRecurring&&(identical(other.meter, meter) || other.meter == meter)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.usage_type, usage_type) || other.usage_type == usage_type)&&(identical(other.interval_count, interval_count) || other.interval_count == interval_count)&&(identical(other.trial_period_days, trial_period_days) || other.trial_period_days == trial_period_days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meter,interval,usage_type,interval_count,trial_period_days);

@override
String toString() {
  return 'SubscriptionPriceRecurring(meter: $meter, interval: $interval, usage_type: $usage_type, interval_count: $interval_count, trial_period_days: $trial_period_days)';
}


}

/// @nodoc
abstract mixin class $SubscriptionPriceRecurringCopyWith<$Res>  {
  factory $SubscriptionPriceRecurringCopyWith(SubscriptionPriceRecurring value, $Res Function(SubscriptionPriceRecurring) _then) = _$SubscriptionPriceRecurringCopyWithImpl;
@useResult
$Res call({
 String? meter, String interval, String usage_type, int interval_count, int? trial_period_days
});




}
/// @nodoc
class _$SubscriptionPriceRecurringCopyWithImpl<$Res>
    implements $SubscriptionPriceRecurringCopyWith<$Res> {
  _$SubscriptionPriceRecurringCopyWithImpl(this._self, this._then);

  final SubscriptionPriceRecurring _self;
  final $Res Function(SubscriptionPriceRecurring) _then;

/// Create a copy of SubscriptionPriceRecurring
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meter = freezed,Object? interval = null,Object? usage_type = null,Object? interval_count = null,Object? trial_period_days = freezed,}) {
  return _then(_self.copyWith(
meter: freezed == meter ? _self.meter : meter // ignore: cast_nullable_to_non_nullable
as String?,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,usage_type: null == usage_type ? _self.usage_type : usage_type // ignore: cast_nullable_to_non_nullable
as String,interval_count: null == interval_count ? _self.interval_count : interval_count // ignore: cast_nullable_to_non_nullable
as int,trial_period_days: freezed == trial_period_days ? _self.trial_period_days : trial_period_days // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionPriceRecurring].
extension SubscriptionPriceRecurringPatterns on SubscriptionPriceRecurring {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionPriceRecurring value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionPriceRecurring() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionPriceRecurring value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPriceRecurring():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionPriceRecurring value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPriceRecurring() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? meter,  String interval,  String usage_type,  int interval_count,  int? trial_period_days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionPriceRecurring() when $default != null:
return $default(_that.meter,_that.interval,_that.usage_type,_that.interval_count,_that.trial_period_days);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? meter,  String interval,  String usage_type,  int interval_count,  int? trial_period_days)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPriceRecurring():
return $default(_that.meter,_that.interval,_that.usage_type,_that.interval_count,_that.trial_period_days);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? meter,  String interval,  String usage_type,  int interval_count,  int? trial_period_days)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPriceRecurring() when $default != null:
return $default(_that.meter,_that.interval,_that.usage_type,_that.interval_count,_that.trial_period_days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionPriceRecurring implements SubscriptionPriceRecurring {
   _SubscriptionPriceRecurring({this.meter, required this.interval, required this.usage_type, required this.interval_count, this.trial_period_days});
  factory _SubscriptionPriceRecurring.fromJson(Map<String, dynamic> json) => _$SubscriptionPriceRecurringFromJson(json);

@override final  String? meter;
@override final  String interval;
@override final  String usage_type;
@override final  int interval_count;
@override final  int? trial_period_days;

/// Create a copy of SubscriptionPriceRecurring
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionPriceRecurringCopyWith<_SubscriptionPriceRecurring> get copyWith => __$SubscriptionPriceRecurringCopyWithImpl<_SubscriptionPriceRecurring>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionPriceRecurringToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionPriceRecurring&&(identical(other.meter, meter) || other.meter == meter)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.usage_type, usage_type) || other.usage_type == usage_type)&&(identical(other.interval_count, interval_count) || other.interval_count == interval_count)&&(identical(other.trial_period_days, trial_period_days) || other.trial_period_days == trial_period_days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meter,interval,usage_type,interval_count,trial_period_days);

@override
String toString() {
  return 'SubscriptionPriceRecurring(meter: $meter, interval: $interval, usage_type: $usage_type, interval_count: $interval_count, trial_period_days: $trial_period_days)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionPriceRecurringCopyWith<$Res> implements $SubscriptionPriceRecurringCopyWith<$Res> {
  factory _$SubscriptionPriceRecurringCopyWith(_SubscriptionPriceRecurring value, $Res Function(_SubscriptionPriceRecurring) _then) = __$SubscriptionPriceRecurringCopyWithImpl;
@override @useResult
$Res call({
 String? meter, String interval, String usage_type, int interval_count, int? trial_period_days
});




}
/// @nodoc
class __$SubscriptionPriceRecurringCopyWithImpl<$Res>
    implements _$SubscriptionPriceRecurringCopyWith<$Res> {
  __$SubscriptionPriceRecurringCopyWithImpl(this._self, this._then);

  final _SubscriptionPriceRecurring _self;
  final $Res Function(_SubscriptionPriceRecurring) _then;

/// Create a copy of SubscriptionPriceRecurring
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meter = freezed,Object? interval = null,Object? usage_type = null,Object? interval_count = null,Object? trial_period_days = freezed,}) {
  return _then(_SubscriptionPriceRecurring(
meter: freezed == meter ? _self.meter : meter // ignore: cast_nullable_to_non_nullable
as String?,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,usage_type: null == usage_type ? _self.usage_type : usage_type // ignore: cast_nullable_to_non_nullable
as String,interval_count: null == interval_count ? _self.interval_count : interval_count // ignore: cast_nullable_to_non_nullable
as int,trial_period_days: freezed == trial_period_days ? _self.trial_period_days : trial_period_days // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SubscriptionPrice {

 String get id; String get type; bool get active; String? get object;@JsonKey(name: 'created')@TimestampConverter() DateTime get created; String get product; String get currency; bool get livemode; Map<String, dynamic>? get metadata; String? get nickname; SubscriptionPriceRecurring get recurring; String? get lookup_key; String? get tiers_mode; int get unit_amount; String? get tax_behavior; String get billing_scheme; String? get custom_unit_amount; String? get transform_quantity; String? get unit_amount_decimal;
/// Create a copy of SubscriptionPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPriceCopyWith<SubscriptionPrice> get copyWith => _$SubscriptionPriceCopyWithImpl<SubscriptionPrice>(this as SubscriptionPrice, _$identity);

  /// Serializes this SubscriptionPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPrice&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.active, active) || other.active == active)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.product, product) || other.product == product)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.livemode, livemode) || other.livemode == livemode)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.recurring, recurring) || other.recurring == recurring)&&(identical(other.lookup_key, lookup_key) || other.lookup_key == lookup_key)&&(identical(other.tiers_mode, tiers_mode) || other.tiers_mode == tiers_mode)&&(identical(other.unit_amount, unit_amount) || other.unit_amount == unit_amount)&&(identical(other.tax_behavior, tax_behavior) || other.tax_behavior == tax_behavior)&&(identical(other.billing_scheme, billing_scheme) || other.billing_scheme == billing_scheme)&&(identical(other.custom_unit_amount, custom_unit_amount) || other.custom_unit_amount == custom_unit_amount)&&(identical(other.transform_quantity, transform_quantity) || other.transform_quantity == transform_quantity)&&(identical(other.unit_amount_decimal, unit_amount_decimal) || other.unit_amount_decimal == unit_amount_decimal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,type,active,object,created,product,currency,livemode,const DeepCollectionEquality().hash(metadata),nickname,recurring,lookup_key,tiers_mode,unit_amount,tax_behavior,billing_scheme,custom_unit_amount,transform_quantity,unit_amount_decimal]);

@override
String toString() {
  return 'SubscriptionPrice(id: $id, type: $type, active: $active, object: $object, created: $created, product: $product, currency: $currency, livemode: $livemode, metadata: $metadata, nickname: $nickname, recurring: $recurring, lookup_key: $lookup_key, tiers_mode: $tiers_mode, unit_amount: $unit_amount, tax_behavior: $tax_behavior, billing_scheme: $billing_scheme, custom_unit_amount: $custom_unit_amount, transform_quantity: $transform_quantity, unit_amount_decimal: $unit_amount_decimal)';
}


}

/// @nodoc
abstract mixin class $SubscriptionPriceCopyWith<$Res>  {
  factory $SubscriptionPriceCopyWith(SubscriptionPrice value, $Res Function(SubscriptionPrice) _then) = _$SubscriptionPriceCopyWithImpl;
@useResult
$Res call({
 String id, String type, bool active, String? object,@JsonKey(name: 'created')@TimestampConverter() DateTime created, String product, String currency, bool livemode, Map<String, dynamic>? metadata, String? nickname, SubscriptionPriceRecurring recurring, String? lookup_key, String? tiers_mode, int unit_amount, String? tax_behavior, String billing_scheme, String? custom_unit_amount, String? transform_quantity, String? unit_amount_decimal
});


$SubscriptionPriceRecurringCopyWith<$Res> get recurring;

}
/// @nodoc
class _$SubscriptionPriceCopyWithImpl<$Res>
    implements $SubscriptionPriceCopyWith<$Res> {
  _$SubscriptionPriceCopyWithImpl(this._self, this._then);

  final SubscriptionPrice _self;
  final $Res Function(SubscriptionPrice) _then;

/// Create a copy of SubscriptionPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? active = null,Object? object = freezed,Object? created = null,Object? product = null,Object? currency = null,Object? livemode = null,Object? metadata = freezed,Object? nickname = freezed,Object? recurring = null,Object? lookup_key = freezed,Object? tiers_mode = freezed,Object? unit_amount = null,Object? tax_behavior = freezed,Object? billing_scheme = null,Object? custom_unit_amount = freezed,Object? transform_quantity = freezed,Object? unit_amount_decimal = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,livemode: null == livemode ? _self.livemode : livemode // ignore: cast_nullable_to_non_nullable
as bool,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,recurring: null == recurring ? _self.recurring : recurring // ignore: cast_nullable_to_non_nullable
as SubscriptionPriceRecurring,lookup_key: freezed == lookup_key ? _self.lookup_key : lookup_key // ignore: cast_nullable_to_non_nullable
as String?,tiers_mode: freezed == tiers_mode ? _self.tiers_mode : tiers_mode // ignore: cast_nullable_to_non_nullable
as String?,unit_amount: null == unit_amount ? _self.unit_amount : unit_amount // ignore: cast_nullable_to_non_nullable
as int,tax_behavior: freezed == tax_behavior ? _self.tax_behavior : tax_behavior // ignore: cast_nullable_to_non_nullable
as String?,billing_scheme: null == billing_scheme ? _self.billing_scheme : billing_scheme // ignore: cast_nullable_to_non_nullable
as String,custom_unit_amount: freezed == custom_unit_amount ? _self.custom_unit_amount : custom_unit_amount // ignore: cast_nullable_to_non_nullable
as String?,transform_quantity: freezed == transform_quantity ? _self.transform_quantity : transform_quantity // ignore: cast_nullable_to_non_nullable
as String?,unit_amount_decimal: freezed == unit_amount_decimal ? _self.unit_amount_decimal : unit_amount_decimal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SubscriptionPrice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPriceRecurringCopyWith<$Res> get recurring {
  
  return $SubscriptionPriceRecurringCopyWith<$Res>(_self.recurring, (value) {
    return _then(_self.copyWith(recurring: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubscriptionPrice].
extension SubscriptionPricePatterns on SubscriptionPrice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionPrice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionPrice value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPrice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionPrice value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPrice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  bool active,  String? object, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  String product,  String currency,  bool livemode,  Map<String, dynamic>? metadata,  String? nickname,  SubscriptionPriceRecurring recurring,  String? lookup_key,  String? tiers_mode,  int unit_amount,  String? tax_behavior,  String billing_scheme,  String? custom_unit_amount,  String? transform_quantity,  String? unit_amount_decimal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionPrice() when $default != null:
return $default(_that.id,_that.type,_that.active,_that.object,_that.created,_that.product,_that.currency,_that.livemode,_that.metadata,_that.nickname,_that.recurring,_that.lookup_key,_that.tiers_mode,_that.unit_amount,_that.tax_behavior,_that.billing_scheme,_that.custom_unit_amount,_that.transform_quantity,_that.unit_amount_decimal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  bool active,  String? object, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  String product,  String currency,  bool livemode,  Map<String, dynamic>? metadata,  String? nickname,  SubscriptionPriceRecurring recurring,  String? lookup_key,  String? tiers_mode,  int unit_amount,  String? tax_behavior,  String billing_scheme,  String? custom_unit_amount,  String? transform_quantity,  String? unit_amount_decimal)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPrice():
return $default(_that.id,_that.type,_that.active,_that.object,_that.created,_that.product,_that.currency,_that.livemode,_that.metadata,_that.nickname,_that.recurring,_that.lookup_key,_that.tiers_mode,_that.unit_amount,_that.tax_behavior,_that.billing_scheme,_that.custom_unit_amount,_that.transform_quantity,_that.unit_amount_decimal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  bool active,  String? object, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  String product,  String currency,  bool livemode,  Map<String, dynamic>? metadata,  String? nickname,  SubscriptionPriceRecurring recurring,  String? lookup_key,  String? tiers_mode,  int unit_amount,  String? tax_behavior,  String billing_scheme,  String? custom_unit_amount,  String? transform_quantity,  String? unit_amount_decimal)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPrice() when $default != null:
return $default(_that.id,_that.type,_that.active,_that.object,_that.created,_that.product,_that.currency,_that.livemode,_that.metadata,_that.nickname,_that.recurring,_that.lookup_key,_that.tiers_mode,_that.unit_amount,_that.tax_behavior,_that.billing_scheme,_that.custom_unit_amount,_that.transform_quantity,_that.unit_amount_decimal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionPrice implements SubscriptionPrice {
   _SubscriptionPrice({required this.id, required this.type, required this.active, this.object, @JsonKey(name: 'created')@TimestampConverter() required this.created, required this.product, required this.currency, required this.livemode, final  Map<String, dynamic>? metadata, this.nickname, required this.recurring, this.lookup_key, this.tiers_mode, required this.unit_amount, this.tax_behavior, required this.billing_scheme, this.custom_unit_amount, this.transform_quantity, this.unit_amount_decimal}): _metadata = metadata;
  factory _SubscriptionPrice.fromJson(Map<String, dynamic> json) => _$SubscriptionPriceFromJson(json);

@override final  String id;
@override final  String type;
@override final  bool active;
@override final  String? object;
@override@JsonKey(name: 'created')@TimestampConverter() final  DateTime created;
@override final  String product;
@override final  String currency;
@override final  bool livemode;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? nickname;
@override final  SubscriptionPriceRecurring recurring;
@override final  String? lookup_key;
@override final  String? tiers_mode;
@override final  int unit_amount;
@override final  String? tax_behavior;
@override final  String billing_scheme;
@override final  String? custom_unit_amount;
@override final  String? transform_quantity;
@override final  String? unit_amount_decimal;

/// Create a copy of SubscriptionPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionPriceCopyWith<_SubscriptionPrice> get copyWith => __$SubscriptionPriceCopyWithImpl<_SubscriptionPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionPrice&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.active, active) || other.active == active)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.product, product) || other.product == product)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.livemode, livemode) || other.livemode == livemode)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.recurring, recurring) || other.recurring == recurring)&&(identical(other.lookup_key, lookup_key) || other.lookup_key == lookup_key)&&(identical(other.tiers_mode, tiers_mode) || other.tiers_mode == tiers_mode)&&(identical(other.unit_amount, unit_amount) || other.unit_amount == unit_amount)&&(identical(other.tax_behavior, tax_behavior) || other.tax_behavior == tax_behavior)&&(identical(other.billing_scheme, billing_scheme) || other.billing_scheme == billing_scheme)&&(identical(other.custom_unit_amount, custom_unit_amount) || other.custom_unit_amount == custom_unit_amount)&&(identical(other.transform_quantity, transform_quantity) || other.transform_quantity == transform_quantity)&&(identical(other.unit_amount_decimal, unit_amount_decimal) || other.unit_amount_decimal == unit_amount_decimal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,type,active,object,created,product,currency,livemode,const DeepCollectionEquality().hash(_metadata),nickname,recurring,lookup_key,tiers_mode,unit_amount,tax_behavior,billing_scheme,custom_unit_amount,transform_quantity,unit_amount_decimal]);

@override
String toString() {
  return 'SubscriptionPrice(id: $id, type: $type, active: $active, object: $object, created: $created, product: $product, currency: $currency, livemode: $livemode, metadata: $metadata, nickname: $nickname, recurring: $recurring, lookup_key: $lookup_key, tiers_mode: $tiers_mode, unit_amount: $unit_amount, tax_behavior: $tax_behavior, billing_scheme: $billing_scheme, custom_unit_amount: $custom_unit_amount, transform_quantity: $transform_quantity, unit_amount_decimal: $unit_amount_decimal)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionPriceCopyWith<$Res> implements $SubscriptionPriceCopyWith<$Res> {
  factory _$SubscriptionPriceCopyWith(_SubscriptionPrice value, $Res Function(_SubscriptionPrice) _then) = __$SubscriptionPriceCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, bool active, String? object,@JsonKey(name: 'created')@TimestampConverter() DateTime created, String product, String currency, bool livemode, Map<String, dynamic>? metadata, String? nickname, SubscriptionPriceRecurring recurring, String? lookup_key, String? tiers_mode, int unit_amount, String? tax_behavior, String billing_scheme, String? custom_unit_amount, String? transform_quantity, String? unit_amount_decimal
});


@override $SubscriptionPriceRecurringCopyWith<$Res> get recurring;

}
/// @nodoc
class __$SubscriptionPriceCopyWithImpl<$Res>
    implements _$SubscriptionPriceCopyWith<$Res> {
  __$SubscriptionPriceCopyWithImpl(this._self, this._then);

  final _SubscriptionPrice _self;
  final $Res Function(_SubscriptionPrice) _then;

/// Create a copy of SubscriptionPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? active = null,Object? object = freezed,Object? created = null,Object? product = null,Object? currency = null,Object? livemode = null,Object? metadata = freezed,Object? nickname = freezed,Object? recurring = null,Object? lookup_key = freezed,Object? tiers_mode = freezed,Object? unit_amount = null,Object? tax_behavior = freezed,Object? billing_scheme = null,Object? custom_unit_amount = freezed,Object? transform_quantity = freezed,Object? unit_amount_decimal = freezed,}) {
  return _then(_SubscriptionPrice(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,livemode: null == livemode ? _self.livemode : livemode // ignore: cast_nullable_to_non_nullable
as bool,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,recurring: null == recurring ? _self.recurring : recurring // ignore: cast_nullable_to_non_nullable
as SubscriptionPriceRecurring,lookup_key: freezed == lookup_key ? _self.lookup_key : lookup_key // ignore: cast_nullable_to_non_nullable
as String?,tiers_mode: freezed == tiers_mode ? _self.tiers_mode : tiers_mode // ignore: cast_nullable_to_non_nullable
as String?,unit_amount: null == unit_amount ? _self.unit_amount : unit_amount // ignore: cast_nullable_to_non_nullable
as int,tax_behavior: freezed == tax_behavior ? _self.tax_behavior : tax_behavior // ignore: cast_nullable_to_non_nullable
as String?,billing_scheme: null == billing_scheme ? _self.billing_scheme : billing_scheme // ignore: cast_nullable_to_non_nullable
as String,custom_unit_amount: freezed == custom_unit_amount ? _self.custom_unit_amount : custom_unit_amount // ignore: cast_nullable_to_non_nullable
as String?,transform_quantity: freezed == transform_quantity ? _self.transform_quantity : transform_quantity // ignore: cast_nullable_to_non_nullable
as String?,unit_amount_decimal: freezed == unit_amount_decimal ? _self.unit_amount_decimal : unit_amount_decimal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SubscriptionPrice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPriceRecurringCopyWith<$Res> get recurring {
  
  return $SubscriptionPriceRecurringCopyWith<$Res>(_self.recurring, (value) {
    return _then(_self.copyWith(recurring: value));
  });
}
}


/// @nodoc
mixin _$SubscriptionItem {

 String get id; SubscriptionPlan get plan; SubscriptionPrice get price; String? get object;@JsonKey(name: 'created')@TimestampConverter() DateTime get created; Map<String, dynamic>? get metadata; int get quantity;@JsonKey(name: 'discounts') List<dynamic> get discounts;@JsonKey(name: 'tax_rates') List<dynamic> get tax_rates; String get subscription; Map<String, dynamic>? get billing_thresholds;@JsonKey(name: 'current_period_end')@NullableTimestampConverter() DateTime? get current_period_end;@JsonKey(name: 'current_period_start')@NullableTimestampConverter() DateTime? get current_period_start;
/// Create a copy of SubscriptionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionItemCopyWith<SubscriptionItem> get copyWith => _$SubscriptionItemCopyWithImpl<SubscriptionItem>(this as SubscriptionItem, _$identity);

  /// Serializes this SubscriptionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.price, price) || other.price == price)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other.discounts, discounts)&&const DeepCollectionEquality().equals(other.tax_rates, tax_rates)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&const DeepCollectionEquality().equals(other.billing_thresholds, billing_thresholds)&&(identical(other.current_period_end, current_period_end) || other.current_period_end == current_period_end)&&(identical(other.current_period_start, current_period_start) || other.current_period_start == current_period_start));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,plan,price,object,created,const DeepCollectionEquality().hash(metadata),quantity,const DeepCollectionEquality().hash(discounts),const DeepCollectionEquality().hash(tax_rates),subscription,const DeepCollectionEquality().hash(billing_thresholds),current_period_end,current_period_start);

@override
String toString() {
  return 'SubscriptionItem(id: $id, plan: $plan, price: $price, object: $object, created: $created, metadata: $metadata, quantity: $quantity, discounts: $discounts, tax_rates: $tax_rates, subscription: $subscription, billing_thresholds: $billing_thresholds, current_period_end: $current_period_end, current_period_start: $current_period_start)';
}


}

/// @nodoc
abstract mixin class $SubscriptionItemCopyWith<$Res>  {
  factory $SubscriptionItemCopyWith(SubscriptionItem value, $Res Function(SubscriptionItem) _then) = _$SubscriptionItemCopyWithImpl;
@useResult
$Res call({
 String id, SubscriptionPlan plan, SubscriptionPrice price, String? object,@JsonKey(name: 'created')@TimestampConverter() DateTime created, Map<String, dynamic>? metadata, int quantity,@JsonKey(name: 'discounts') List<dynamic> discounts,@JsonKey(name: 'tax_rates') List<dynamic> tax_rates, String subscription, Map<String, dynamic>? billing_thresholds,@JsonKey(name: 'current_period_end')@NullableTimestampConverter() DateTime? current_period_end,@JsonKey(name: 'current_period_start')@NullableTimestampConverter() DateTime? current_period_start
});


$SubscriptionPlanCopyWith<$Res> get plan;$SubscriptionPriceCopyWith<$Res> get price;

}
/// @nodoc
class _$SubscriptionItemCopyWithImpl<$Res>
    implements $SubscriptionItemCopyWith<$Res> {
  _$SubscriptionItemCopyWithImpl(this._self, this._then);

  final SubscriptionItem _self;
  final $Res Function(SubscriptionItem) _then;

/// Create a copy of SubscriptionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? plan = null,Object? price = null,Object? object = freezed,Object? created = null,Object? metadata = freezed,Object? quantity = null,Object? discounts = null,Object? tax_rates = null,Object? subscription = null,Object? billing_thresholds = freezed,Object? current_period_end = freezed,Object? current_period_start = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as SubscriptionPrice,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,discounts: null == discounts ? _self.discounts : discounts // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tax_rates: null == tax_rates ? _self.tax_rates : tax_rates // ignore: cast_nullable_to_non_nullable
as List<dynamic>,subscription: null == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as String,billing_thresholds: freezed == billing_thresholds ? _self.billing_thresholds : billing_thresholds // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,current_period_end: freezed == current_period_end ? _self.current_period_end : current_period_end // ignore: cast_nullable_to_non_nullable
as DateTime?,current_period_start: freezed == current_period_start ? _self.current_period_start : current_period_start // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of SubscriptionItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res> get plan {
  
  return $SubscriptionPlanCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}/// Create a copy of SubscriptionItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPriceCopyWith<$Res> get price {
  
  return $SubscriptionPriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubscriptionItem].
extension SubscriptionItemPatterns on SubscriptionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionItem value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionItem value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  SubscriptionPlan plan,  SubscriptionPrice price,  String? object, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  Map<String, dynamic>? metadata,  int quantity, @JsonKey(name: 'discounts')  List<dynamic> discounts, @JsonKey(name: 'tax_rates')  List<dynamic> tax_rates,  String subscription,  Map<String, dynamic>? billing_thresholds, @JsonKey(name: 'current_period_end')@NullableTimestampConverter()  DateTime? current_period_end, @JsonKey(name: 'current_period_start')@NullableTimestampConverter()  DateTime? current_period_start)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionItem() when $default != null:
return $default(_that.id,_that.plan,_that.price,_that.object,_that.created,_that.metadata,_that.quantity,_that.discounts,_that.tax_rates,_that.subscription,_that.billing_thresholds,_that.current_period_end,_that.current_period_start);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  SubscriptionPlan plan,  SubscriptionPrice price,  String? object, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  Map<String, dynamic>? metadata,  int quantity, @JsonKey(name: 'discounts')  List<dynamic> discounts, @JsonKey(name: 'tax_rates')  List<dynamic> tax_rates,  String subscription,  Map<String, dynamic>? billing_thresholds, @JsonKey(name: 'current_period_end')@NullableTimestampConverter()  DateTime? current_period_end, @JsonKey(name: 'current_period_start')@NullableTimestampConverter()  DateTime? current_period_start)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionItem():
return $default(_that.id,_that.plan,_that.price,_that.object,_that.created,_that.metadata,_that.quantity,_that.discounts,_that.tax_rates,_that.subscription,_that.billing_thresholds,_that.current_period_end,_that.current_period_start);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  SubscriptionPlan plan,  SubscriptionPrice price,  String? object, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  Map<String, dynamic>? metadata,  int quantity, @JsonKey(name: 'discounts')  List<dynamic> discounts, @JsonKey(name: 'tax_rates')  List<dynamic> tax_rates,  String subscription,  Map<String, dynamic>? billing_thresholds, @JsonKey(name: 'current_period_end')@NullableTimestampConverter()  DateTime? current_period_end, @JsonKey(name: 'current_period_start')@NullableTimestampConverter()  DateTime? current_period_start)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionItem() when $default != null:
return $default(_that.id,_that.plan,_that.price,_that.object,_that.created,_that.metadata,_that.quantity,_that.discounts,_that.tax_rates,_that.subscription,_that.billing_thresholds,_that.current_period_end,_that.current_period_start);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionItem implements SubscriptionItem {
   _SubscriptionItem({required this.id, required this.plan, required this.price, this.object, @JsonKey(name: 'created')@TimestampConverter() required this.created, final  Map<String, dynamic>? metadata, required this.quantity, @JsonKey(name: 'discounts') final  List<dynamic> discounts = const [], @JsonKey(name: 'tax_rates') final  List<dynamic> tax_rates = const [], required this.subscription, final  Map<String, dynamic>? billing_thresholds, @JsonKey(name: 'current_period_end')@NullableTimestampConverter() this.current_period_end, @JsonKey(name: 'current_period_start')@NullableTimestampConverter() this.current_period_start}): _metadata = metadata,_discounts = discounts,_tax_rates = tax_rates,_billing_thresholds = billing_thresholds;
  factory _SubscriptionItem.fromJson(Map<String, dynamic> json) => _$SubscriptionItemFromJson(json);

@override final  String id;
@override final  SubscriptionPlan plan;
@override final  SubscriptionPrice price;
@override final  String? object;
@override@JsonKey(name: 'created')@TimestampConverter() final  DateTime created;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  int quantity;
 final  List<dynamic> _discounts;
@override@JsonKey(name: 'discounts') List<dynamic> get discounts {
  if (_discounts is EqualUnmodifiableListView) return _discounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_discounts);
}

 final  List<dynamic> _tax_rates;
@override@JsonKey(name: 'tax_rates') List<dynamic> get tax_rates {
  if (_tax_rates is EqualUnmodifiableListView) return _tax_rates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tax_rates);
}

@override final  String subscription;
 final  Map<String, dynamic>? _billing_thresholds;
@override Map<String, dynamic>? get billing_thresholds {
  final value = _billing_thresholds;
  if (value == null) return null;
  if (_billing_thresholds is EqualUnmodifiableMapView) return _billing_thresholds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'current_period_end')@NullableTimestampConverter() final  DateTime? current_period_end;
@override@JsonKey(name: 'current_period_start')@NullableTimestampConverter() final  DateTime? current_period_start;

/// Create a copy of SubscriptionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionItemCopyWith<_SubscriptionItem> get copyWith => __$SubscriptionItemCopyWithImpl<_SubscriptionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.price, price) || other.price == price)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._discounts, _discounts)&&const DeepCollectionEquality().equals(other._tax_rates, _tax_rates)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&const DeepCollectionEquality().equals(other._billing_thresholds, _billing_thresholds)&&(identical(other.current_period_end, current_period_end) || other.current_period_end == current_period_end)&&(identical(other.current_period_start, current_period_start) || other.current_period_start == current_period_start));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,plan,price,object,created,const DeepCollectionEquality().hash(_metadata),quantity,const DeepCollectionEquality().hash(_discounts),const DeepCollectionEquality().hash(_tax_rates),subscription,const DeepCollectionEquality().hash(_billing_thresholds),current_period_end,current_period_start);

@override
String toString() {
  return 'SubscriptionItem(id: $id, plan: $plan, price: $price, object: $object, created: $created, metadata: $metadata, quantity: $quantity, discounts: $discounts, tax_rates: $tax_rates, subscription: $subscription, billing_thresholds: $billing_thresholds, current_period_end: $current_period_end, current_period_start: $current_period_start)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionItemCopyWith<$Res> implements $SubscriptionItemCopyWith<$Res> {
  factory _$SubscriptionItemCopyWith(_SubscriptionItem value, $Res Function(_SubscriptionItem) _then) = __$SubscriptionItemCopyWithImpl;
@override @useResult
$Res call({
 String id, SubscriptionPlan plan, SubscriptionPrice price, String? object,@JsonKey(name: 'created')@TimestampConverter() DateTime created, Map<String, dynamic>? metadata, int quantity,@JsonKey(name: 'discounts') List<dynamic> discounts,@JsonKey(name: 'tax_rates') List<dynamic> tax_rates, String subscription, Map<String, dynamic>? billing_thresholds,@JsonKey(name: 'current_period_end')@NullableTimestampConverter() DateTime? current_period_end,@JsonKey(name: 'current_period_start')@NullableTimestampConverter() DateTime? current_period_start
});


@override $SubscriptionPlanCopyWith<$Res> get plan;@override $SubscriptionPriceCopyWith<$Res> get price;

}
/// @nodoc
class __$SubscriptionItemCopyWithImpl<$Res>
    implements _$SubscriptionItemCopyWith<$Res> {
  __$SubscriptionItemCopyWithImpl(this._self, this._then);

  final _SubscriptionItem _self;
  final $Res Function(_SubscriptionItem) _then;

/// Create a copy of SubscriptionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? plan = null,Object? price = null,Object? object = freezed,Object? created = null,Object? metadata = freezed,Object? quantity = null,Object? discounts = null,Object? tax_rates = null,Object? subscription = null,Object? billing_thresholds = freezed,Object? current_period_end = freezed,Object? current_period_start = freezed,}) {
  return _then(_SubscriptionItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as SubscriptionPrice,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,discounts: null == discounts ? _self._discounts : discounts // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tax_rates: null == tax_rates ? _self._tax_rates : tax_rates // ignore: cast_nullable_to_non_nullable
as List<dynamic>,subscription: null == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as String,billing_thresholds: freezed == billing_thresholds ? _self._billing_thresholds : billing_thresholds // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,current_period_end: freezed == current_period_end ? _self.current_period_end : current_period_end // ignore: cast_nullable_to_non_nullable
as DateTime?,current_period_start: freezed == current_period_start ? _self.current_period_start : current_period_start // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of SubscriptionItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res> get plan {
  
  return $SubscriptionPlanCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}/// Create a copy of SubscriptionItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPriceCopyWith<$Res> get price {
  
  return $SubscriptionPriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// @nodoc
mixin _$SubscriptionItems {

 String get url;@JsonKey(name: 'data') List<SubscriptionItem> get data; String get object; bool get has_more; int get total_count;
/// Create a copy of SubscriptionItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionItemsCopyWith<SubscriptionItems> get copyWith => _$SubscriptionItemsCopyWithImpl<SubscriptionItems>(this as SubscriptionItems, _$identity);

  /// Serializes this SubscriptionItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionItems&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.object, object) || other.object == object)&&(identical(other.has_more, has_more) || other.has_more == has_more)&&(identical(other.total_count, total_count) || other.total_count == total_count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,const DeepCollectionEquality().hash(data),object,has_more,total_count);

@override
String toString() {
  return 'SubscriptionItems(url: $url, data: $data, object: $object, has_more: $has_more, total_count: $total_count)';
}


}

/// @nodoc
abstract mixin class $SubscriptionItemsCopyWith<$Res>  {
  factory $SubscriptionItemsCopyWith(SubscriptionItems value, $Res Function(SubscriptionItems) _then) = _$SubscriptionItemsCopyWithImpl;
@useResult
$Res call({
 String url,@JsonKey(name: 'data') List<SubscriptionItem> data, String object, bool has_more, int total_count
});




}
/// @nodoc
class _$SubscriptionItemsCopyWithImpl<$Res>
    implements $SubscriptionItemsCopyWith<$Res> {
  _$SubscriptionItemsCopyWithImpl(this._self, this._then);

  final SubscriptionItems _self;
  final $Res Function(SubscriptionItems) _then;

/// Create a copy of SubscriptionItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? data = null,Object? object = null,Object? has_more = null,Object? total_count = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<SubscriptionItem>,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,has_more: null == has_more ? _self.has_more : has_more // ignore: cast_nullable_to_non_nullable
as bool,total_count: null == total_count ? _self.total_count : total_count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionItems].
extension SubscriptionItemsPatterns on SubscriptionItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionItems value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionItems value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url, @JsonKey(name: 'data')  List<SubscriptionItem> data,  String object,  bool has_more,  int total_count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionItems() when $default != null:
return $default(_that.url,_that.data,_that.object,_that.has_more,_that.total_count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url, @JsonKey(name: 'data')  List<SubscriptionItem> data,  String object,  bool has_more,  int total_count)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionItems():
return $default(_that.url,_that.data,_that.object,_that.has_more,_that.total_count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url, @JsonKey(name: 'data')  List<SubscriptionItem> data,  String object,  bool has_more,  int total_count)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionItems() when $default != null:
return $default(_that.url,_that.data,_that.object,_that.has_more,_that.total_count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionItems implements SubscriptionItems {
   _SubscriptionItems({required this.url, @JsonKey(name: 'data') required final  List<SubscriptionItem> data, required this.object, required this.has_more, required this.total_count}): _data = data;
  factory _SubscriptionItems.fromJson(Map<String, dynamic> json) => _$SubscriptionItemsFromJson(json);

@override final  String url;
 final  List<SubscriptionItem> _data;
@override@JsonKey(name: 'data') List<SubscriptionItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String object;
@override final  bool has_more;
@override final  int total_count;

/// Create a copy of SubscriptionItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionItemsCopyWith<_SubscriptionItems> get copyWith => __$SubscriptionItemsCopyWithImpl<_SubscriptionItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionItems&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.object, object) || other.object == object)&&(identical(other.has_more, has_more) || other.has_more == has_more)&&(identical(other.total_count, total_count) || other.total_count == total_count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,const DeepCollectionEquality().hash(_data),object,has_more,total_count);

@override
String toString() {
  return 'SubscriptionItems(url: $url, data: $data, object: $object, has_more: $has_more, total_count: $total_count)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionItemsCopyWith<$Res> implements $SubscriptionItemsCopyWith<$Res> {
  factory _$SubscriptionItemsCopyWith(_SubscriptionItems value, $Res Function(_SubscriptionItems) _then) = __$SubscriptionItemsCopyWithImpl;
@override @useResult
$Res call({
 String url,@JsonKey(name: 'data') List<SubscriptionItem> data, String object, bool has_more, int total_count
});




}
/// @nodoc
class __$SubscriptionItemsCopyWithImpl<$Res>
    implements _$SubscriptionItemsCopyWith<$Res> {
  __$SubscriptionItemsCopyWithImpl(this._self, this._then);

  final _SubscriptionItems _self;
  final $Res Function(_SubscriptionItems) _then;

/// Create a copy of SubscriptionItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? data = null,Object? object = null,Object? has_more = null,Object? total_count = null,}) {
  return _then(_SubscriptionItems(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<SubscriptionItem>,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,has_more: null == has_more ? _self.has_more : has_more // ignore: cast_nullable_to_non_nullable
as bool,total_count: null == total_count ? _self.total_count : total_count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Subscription {

 String get id; String? get object; bool get cancel_at_period_end;@JsonKey(name: 'current_period_end')@NullableTimestampConverter() DateTime? get current_period_end;@JsonKey(name: 'current_period_start')@NullableTimestampConverter() DateTime? get current_period_start; String? get default_payment_method; SubscriptionItems get items; SubscriptionMetadata get metadata; String? get pending_setup_intent; Map<String, dynamic>? get pending_update; String get status; double? get application_fee_percent;@JsonKey(name: 'billing_cycle_anchor')@NullableTimestampConverter() DateTime? get billing_cycle_anchor; Map<String, dynamic>? get billing_thresholds;@JsonKey(name: 'cancel_at')@NullableTimestampConverter() DateTime? get cancel_at;@JsonKey(name: 'canceled_at')@NullableTimestampConverter() DateTime? get canceled_at; String? get collection_method;@JsonKey(name: 'created')@TimestampConverter() DateTime get created; int? get days_until_due; String? get default_source;@JsonKey(name: 'default_tax_rates') List<dynamic> get default_tax_rates; Map<String, dynamic>? get discount;@JsonKey(name: 'ended_at')@NullableTimestampConverter() DateTime? get ended_at; bool get livemode; String? get latest_invoice; String? get next_pending_invoice_item_invoice; Map<String, dynamic>? get pause_collection; Map<String, dynamic>? get pending_invoice_item_interval;@JsonKey(name: 'start_date')@NullableTimestampConverter() DateTime? get start_date; Map<String, dynamic>? get transfer_data;@JsonKey(name: 'trial_end')@NullableTimestampConverter() DateTime? get trial_end;@JsonKey(name: 'trial_start')@NullableTimestampConverter() DateTime? get trial_start; Map<String, dynamic>? get schedule; String? get customer; String? get plan;// JSON string
@JsonKey(name: 'updated_at')@NullableTimestampConverter() DateTime? get updated_at;@JsonKey(name: 'last_synced_at')@NullableTimestampConverter() DateTime? get last_synced_at;
/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionCopyWith<Subscription> get copyWith => _$SubscriptionCopyWithImpl<Subscription>(this as Subscription, _$identity);

  /// Serializes this Subscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subscription&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.cancel_at_period_end, cancel_at_period_end) || other.cancel_at_period_end == cancel_at_period_end)&&(identical(other.current_period_end, current_period_end) || other.current_period_end == current_period_end)&&(identical(other.current_period_start, current_period_start) || other.current_period_start == current_period_start)&&(identical(other.default_payment_method, default_payment_method) || other.default_payment_method == default_payment_method)&&(identical(other.items, items) || other.items == items)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.pending_setup_intent, pending_setup_intent) || other.pending_setup_intent == pending_setup_intent)&&const DeepCollectionEquality().equals(other.pending_update, pending_update)&&(identical(other.status, status) || other.status == status)&&(identical(other.application_fee_percent, application_fee_percent) || other.application_fee_percent == application_fee_percent)&&(identical(other.billing_cycle_anchor, billing_cycle_anchor) || other.billing_cycle_anchor == billing_cycle_anchor)&&const DeepCollectionEquality().equals(other.billing_thresholds, billing_thresholds)&&(identical(other.cancel_at, cancel_at) || other.cancel_at == cancel_at)&&(identical(other.canceled_at, canceled_at) || other.canceled_at == canceled_at)&&(identical(other.collection_method, collection_method) || other.collection_method == collection_method)&&(identical(other.created, created) || other.created == created)&&(identical(other.days_until_due, days_until_due) || other.days_until_due == days_until_due)&&(identical(other.default_source, default_source) || other.default_source == default_source)&&const DeepCollectionEquality().equals(other.default_tax_rates, default_tax_rates)&&const DeepCollectionEquality().equals(other.discount, discount)&&(identical(other.ended_at, ended_at) || other.ended_at == ended_at)&&(identical(other.livemode, livemode) || other.livemode == livemode)&&(identical(other.latest_invoice, latest_invoice) || other.latest_invoice == latest_invoice)&&(identical(other.next_pending_invoice_item_invoice, next_pending_invoice_item_invoice) || other.next_pending_invoice_item_invoice == next_pending_invoice_item_invoice)&&const DeepCollectionEquality().equals(other.pause_collection, pause_collection)&&const DeepCollectionEquality().equals(other.pending_invoice_item_interval, pending_invoice_item_interval)&&(identical(other.start_date, start_date) || other.start_date == start_date)&&const DeepCollectionEquality().equals(other.transfer_data, transfer_data)&&(identical(other.trial_end, trial_end) || other.trial_end == trial_end)&&(identical(other.trial_start, trial_start) || other.trial_start == trial_start)&&const DeepCollectionEquality().equals(other.schedule, schedule)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.last_synced_at, last_synced_at) || other.last_synced_at == last_synced_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,object,cancel_at_period_end,current_period_end,current_period_start,default_payment_method,items,metadata,pending_setup_intent,const DeepCollectionEquality().hash(pending_update),status,application_fee_percent,billing_cycle_anchor,const DeepCollectionEquality().hash(billing_thresholds),cancel_at,canceled_at,collection_method,created,days_until_due,default_source,const DeepCollectionEquality().hash(default_tax_rates),const DeepCollectionEquality().hash(discount),ended_at,livemode,latest_invoice,next_pending_invoice_item_invoice,const DeepCollectionEquality().hash(pause_collection),const DeepCollectionEquality().hash(pending_invoice_item_interval),start_date,const DeepCollectionEquality().hash(transfer_data),trial_end,trial_start,const DeepCollectionEquality().hash(schedule),customer,plan,updated_at,last_synced_at]);

@override
String toString() {
  return 'Subscription(id: $id, object: $object, cancel_at_period_end: $cancel_at_period_end, current_period_end: $current_period_end, current_period_start: $current_period_start, default_payment_method: $default_payment_method, items: $items, metadata: $metadata, pending_setup_intent: $pending_setup_intent, pending_update: $pending_update, status: $status, application_fee_percent: $application_fee_percent, billing_cycle_anchor: $billing_cycle_anchor, billing_thresholds: $billing_thresholds, cancel_at: $cancel_at, canceled_at: $canceled_at, collection_method: $collection_method, created: $created, days_until_due: $days_until_due, default_source: $default_source, default_tax_rates: $default_tax_rates, discount: $discount, ended_at: $ended_at, livemode: $livemode, latest_invoice: $latest_invoice, next_pending_invoice_item_invoice: $next_pending_invoice_item_invoice, pause_collection: $pause_collection, pending_invoice_item_interval: $pending_invoice_item_interval, start_date: $start_date, transfer_data: $transfer_data, trial_end: $trial_end, trial_start: $trial_start, schedule: $schedule, customer: $customer, plan: $plan, updated_at: $updated_at, last_synced_at: $last_synced_at)';
}


}

/// @nodoc
abstract mixin class $SubscriptionCopyWith<$Res>  {
  factory $SubscriptionCopyWith(Subscription value, $Res Function(Subscription) _then) = _$SubscriptionCopyWithImpl;
@useResult
$Res call({
 String id, String? object, bool cancel_at_period_end,@JsonKey(name: 'current_period_end')@NullableTimestampConverter() DateTime? current_period_end,@JsonKey(name: 'current_period_start')@NullableTimestampConverter() DateTime? current_period_start, String? default_payment_method, SubscriptionItems items, SubscriptionMetadata metadata, String? pending_setup_intent, Map<String, dynamic>? pending_update, String status, double? application_fee_percent,@JsonKey(name: 'billing_cycle_anchor')@NullableTimestampConverter() DateTime? billing_cycle_anchor, Map<String, dynamic>? billing_thresholds,@JsonKey(name: 'cancel_at')@NullableTimestampConverter() DateTime? cancel_at,@JsonKey(name: 'canceled_at')@NullableTimestampConverter() DateTime? canceled_at, String? collection_method,@JsonKey(name: 'created')@TimestampConverter() DateTime created, int? days_until_due, String? default_source,@JsonKey(name: 'default_tax_rates') List<dynamic> default_tax_rates, Map<String, dynamic>? discount,@JsonKey(name: 'ended_at')@NullableTimestampConverter() DateTime? ended_at, bool livemode, String? latest_invoice, String? next_pending_invoice_item_invoice, Map<String, dynamic>? pause_collection, Map<String, dynamic>? pending_invoice_item_interval,@JsonKey(name: 'start_date')@NullableTimestampConverter() DateTime? start_date, Map<String, dynamic>? transfer_data,@JsonKey(name: 'trial_end')@NullableTimestampConverter() DateTime? trial_end,@JsonKey(name: 'trial_start')@NullableTimestampConverter() DateTime? trial_start, Map<String, dynamic>? schedule, String? customer, String? plan,@JsonKey(name: 'updated_at')@NullableTimestampConverter() DateTime? updated_at,@JsonKey(name: 'last_synced_at')@NullableTimestampConverter() DateTime? last_synced_at
});


$SubscriptionItemsCopyWith<$Res> get items;$SubscriptionMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$SubscriptionCopyWithImpl<$Res>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._self, this._then);

  final Subscription _self;
  final $Res Function(Subscription) _then;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = freezed,Object? cancel_at_period_end = null,Object? current_period_end = freezed,Object? current_period_start = freezed,Object? default_payment_method = freezed,Object? items = null,Object? metadata = null,Object? pending_setup_intent = freezed,Object? pending_update = freezed,Object? status = null,Object? application_fee_percent = freezed,Object? billing_cycle_anchor = freezed,Object? billing_thresholds = freezed,Object? cancel_at = freezed,Object? canceled_at = freezed,Object? collection_method = freezed,Object? created = null,Object? days_until_due = freezed,Object? default_source = freezed,Object? default_tax_rates = null,Object? discount = freezed,Object? ended_at = freezed,Object? livemode = null,Object? latest_invoice = freezed,Object? next_pending_invoice_item_invoice = freezed,Object? pause_collection = freezed,Object? pending_invoice_item_interval = freezed,Object? start_date = freezed,Object? transfer_data = freezed,Object? trial_end = freezed,Object? trial_start = freezed,Object? schedule = freezed,Object? customer = freezed,Object? plan = freezed,Object? updated_at = freezed,Object? last_synced_at = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,cancel_at_period_end: null == cancel_at_period_end ? _self.cancel_at_period_end : cancel_at_period_end // ignore: cast_nullable_to_non_nullable
as bool,current_period_end: freezed == current_period_end ? _self.current_period_end : current_period_end // ignore: cast_nullable_to_non_nullable
as DateTime?,current_period_start: freezed == current_period_start ? _self.current_period_start : current_period_start // ignore: cast_nullable_to_non_nullable
as DateTime?,default_payment_method: freezed == default_payment_method ? _self.default_payment_method : default_payment_method // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as SubscriptionItems,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as SubscriptionMetadata,pending_setup_intent: freezed == pending_setup_intent ? _self.pending_setup_intent : pending_setup_intent // ignore: cast_nullable_to_non_nullable
as String?,pending_update: freezed == pending_update ? _self.pending_update : pending_update // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,application_fee_percent: freezed == application_fee_percent ? _self.application_fee_percent : application_fee_percent // ignore: cast_nullable_to_non_nullable
as double?,billing_cycle_anchor: freezed == billing_cycle_anchor ? _self.billing_cycle_anchor : billing_cycle_anchor // ignore: cast_nullable_to_non_nullable
as DateTime?,billing_thresholds: freezed == billing_thresholds ? _self.billing_thresholds : billing_thresholds // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,cancel_at: freezed == cancel_at ? _self.cancel_at : cancel_at // ignore: cast_nullable_to_non_nullable
as DateTime?,canceled_at: freezed == canceled_at ? _self.canceled_at : canceled_at // ignore: cast_nullable_to_non_nullable
as DateTime?,collection_method: freezed == collection_method ? _self.collection_method : collection_method // ignore: cast_nullable_to_non_nullable
as String?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,days_until_due: freezed == days_until_due ? _self.days_until_due : days_until_due // ignore: cast_nullable_to_non_nullable
as int?,default_source: freezed == default_source ? _self.default_source : default_source // ignore: cast_nullable_to_non_nullable
as String?,default_tax_rates: null == default_tax_rates ? _self.default_tax_rates : default_tax_rates // ignore: cast_nullable_to_non_nullable
as List<dynamic>,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ended_at: freezed == ended_at ? _self.ended_at : ended_at // ignore: cast_nullable_to_non_nullable
as DateTime?,livemode: null == livemode ? _self.livemode : livemode // ignore: cast_nullable_to_non_nullable
as bool,latest_invoice: freezed == latest_invoice ? _self.latest_invoice : latest_invoice // ignore: cast_nullable_to_non_nullable
as String?,next_pending_invoice_item_invoice: freezed == next_pending_invoice_item_invoice ? _self.next_pending_invoice_item_invoice : next_pending_invoice_item_invoice // ignore: cast_nullable_to_non_nullable
as String?,pause_collection: freezed == pause_collection ? _self.pause_collection : pause_collection // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,pending_invoice_item_interval: freezed == pending_invoice_item_interval ? _self.pending_invoice_item_interval : pending_invoice_item_interval // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,start_date: freezed == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as DateTime?,transfer_data: freezed == transfer_data ? _self.transfer_data : transfer_data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,trial_end: freezed == trial_end ? _self.trial_end : trial_end // ignore: cast_nullable_to_non_nullable
as DateTime?,trial_start: freezed == trial_start ? _self.trial_start : trial_start // ignore: cast_nullable_to_non_nullable
as DateTime?,schedule: freezed == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as String?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as DateTime?,last_synced_at: freezed == last_synced_at ? _self.last_synced_at : last_synced_at // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionItemsCopyWith<$Res> get items {
  
  return $SubscriptionItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionMetadataCopyWith<$Res> get metadata {
  
  return $SubscriptionMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [Subscription].
extension SubscriptionPatterns on Subscription {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Subscription value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Subscription() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Subscription value)  $default,){
final _that = this;
switch (_that) {
case _Subscription():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Subscription value)?  $default,){
final _that = this;
switch (_that) {
case _Subscription() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? object,  bool cancel_at_period_end, @JsonKey(name: 'current_period_end')@NullableTimestampConverter()  DateTime? current_period_end, @JsonKey(name: 'current_period_start')@NullableTimestampConverter()  DateTime? current_period_start,  String? default_payment_method,  SubscriptionItems items,  SubscriptionMetadata metadata,  String? pending_setup_intent,  Map<String, dynamic>? pending_update,  String status,  double? application_fee_percent, @JsonKey(name: 'billing_cycle_anchor')@NullableTimestampConverter()  DateTime? billing_cycle_anchor,  Map<String, dynamic>? billing_thresholds, @JsonKey(name: 'cancel_at')@NullableTimestampConverter()  DateTime? cancel_at, @JsonKey(name: 'canceled_at')@NullableTimestampConverter()  DateTime? canceled_at,  String? collection_method, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  int? days_until_due,  String? default_source, @JsonKey(name: 'default_tax_rates')  List<dynamic> default_tax_rates,  Map<String, dynamic>? discount, @JsonKey(name: 'ended_at')@NullableTimestampConverter()  DateTime? ended_at,  bool livemode,  String? latest_invoice,  String? next_pending_invoice_item_invoice,  Map<String, dynamic>? pause_collection,  Map<String, dynamic>? pending_invoice_item_interval, @JsonKey(name: 'start_date')@NullableTimestampConverter()  DateTime? start_date,  Map<String, dynamic>? transfer_data, @JsonKey(name: 'trial_end')@NullableTimestampConverter()  DateTime? trial_end, @JsonKey(name: 'trial_start')@NullableTimestampConverter()  DateTime? trial_start,  Map<String, dynamic>? schedule,  String? customer,  String? plan, @JsonKey(name: 'updated_at')@NullableTimestampConverter()  DateTime? updated_at, @JsonKey(name: 'last_synced_at')@NullableTimestampConverter()  DateTime? last_synced_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Subscription() when $default != null:
return $default(_that.id,_that.object,_that.cancel_at_period_end,_that.current_period_end,_that.current_period_start,_that.default_payment_method,_that.items,_that.metadata,_that.pending_setup_intent,_that.pending_update,_that.status,_that.application_fee_percent,_that.billing_cycle_anchor,_that.billing_thresholds,_that.cancel_at,_that.canceled_at,_that.collection_method,_that.created,_that.days_until_due,_that.default_source,_that.default_tax_rates,_that.discount,_that.ended_at,_that.livemode,_that.latest_invoice,_that.next_pending_invoice_item_invoice,_that.pause_collection,_that.pending_invoice_item_interval,_that.start_date,_that.transfer_data,_that.trial_end,_that.trial_start,_that.schedule,_that.customer,_that.plan,_that.updated_at,_that.last_synced_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? object,  bool cancel_at_period_end, @JsonKey(name: 'current_period_end')@NullableTimestampConverter()  DateTime? current_period_end, @JsonKey(name: 'current_period_start')@NullableTimestampConverter()  DateTime? current_period_start,  String? default_payment_method,  SubscriptionItems items,  SubscriptionMetadata metadata,  String? pending_setup_intent,  Map<String, dynamic>? pending_update,  String status,  double? application_fee_percent, @JsonKey(name: 'billing_cycle_anchor')@NullableTimestampConverter()  DateTime? billing_cycle_anchor,  Map<String, dynamic>? billing_thresholds, @JsonKey(name: 'cancel_at')@NullableTimestampConverter()  DateTime? cancel_at, @JsonKey(name: 'canceled_at')@NullableTimestampConverter()  DateTime? canceled_at,  String? collection_method, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  int? days_until_due,  String? default_source, @JsonKey(name: 'default_tax_rates')  List<dynamic> default_tax_rates,  Map<String, dynamic>? discount, @JsonKey(name: 'ended_at')@NullableTimestampConverter()  DateTime? ended_at,  bool livemode,  String? latest_invoice,  String? next_pending_invoice_item_invoice,  Map<String, dynamic>? pause_collection,  Map<String, dynamic>? pending_invoice_item_interval, @JsonKey(name: 'start_date')@NullableTimestampConverter()  DateTime? start_date,  Map<String, dynamic>? transfer_data, @JsonKey(name: 'trial_end')@NullableTimestampConverter()  DateTime? trial_end, @JsonKey(name: 'trial_start')@NullableTimestampConverter()  DateTime? trial_start,  Map<String, dynamic>? schedule,  String? customer,  String? plan, @JsonKey(name: 'updated_at')@NullableTimestampConverter()  DateTime? updated_at, @JsonKey(name: 'last_synced_at')@NullableTimestampConverter()  DateTime? last_synced_at)  $default,) {final _that = this;
switch (_that) {
case _Subscription():
return $default(_that.id,_that.object,_that.cancel_at_period_end,_that.current_period_end,_that.current_period_start,_that.default_payment_method,_that.items,_that.metadata,_that.pending_setup_intent,_that.pending_update,_that.status,_that.application_fee_percent,_that.billing_cycle_anchor,_that.billing_thresholds,_that.cancel_at,_that.canceled_at,_that.collection_method,_that.created,_that.days_until_due,_that.default_source,_that.default_tax_rates,_that.discount,_that.ended_at,_that.livemode,_that.latest_invoice,_that.next_pending_invoice_item_invoice,_that.pause_collection,_that.pending_invoice_item_interval,_that.start_date,_that.transfer_data,_that.trial_end,_that.trial_start,_that.schedule,_that.customer,_that.plan,_that.updated_at,_that.last_synced_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? object,  bool cancel_at_period_end, @JsonKey(name: 'current_period_end')@NullableTimestampConverter()  DateTime? current_period_end, @JsonKey(name: 'current_period_start')@NullableTimestampConverter()  DateTime? current_period_start,  String? default_payment_method,  SubscriptionItems items,  SubscriptionMetadata metadata,  String? pending_setup_intent,  Map<String, dynamic>? pending_update,  String status,  double? application_fee_percent, @JsonKey(name: 'billing_cycle_anchor')@NullableTimestampConverter()  DateTime? billing_cycle_anchor,  Map<String, dynamic>? billing_thresholds, @JsonKey(name: 'cancel_at')@NullableTimestampConverter()  DateTime? cancel_at, @JsonKey(name: 'canceled_at')@NullableTimestampConverter()  DateTime? canceled_at,  String? collection_method, @JsonKey(name: 'created')@TimestampConverter()  DateTime created,  int? days_until_due,  String? default_source, @JsonKey(name: 'default_tax_rates')  List<dynamic> default_tax_rates,  Map<String, dynamic>? discount, @JsonKey(name: 'ended_at')@NullableTimestampConverter()  DateTime? ended_at,  bool livemode,  String? latest_invoice,  String? next_pending_invoice_item_invoice,  Map<String, dynamic>? pause_collection,  Map<String, dynamic>? pending_invoice_item_interval, @JsonKey(name: 'start_date')@NullableTimestampConverter()  DateTime? start_date,  Map<String, dynamic>? transfer_data, @JsonKey(name: 'trial_end')@NullableTimestampConverter()  DateTime? trial_end, @JsonKey(name: 'trial_start')@NullableTimestampConverter()  DateTime? trial_start,  Map<String, dynamic>? schedule,  String? customer,  String? plan, @JsonKey(name: 'updated_at')@NullableTimestampConverter()  DateTime? updated_at, @JsonKey(name: 'last_synced_at')@NullableTimestampConverter()  DateTime? last_synced_at)?  $default,) {final _that = this;
switch (_that) {
case _Subscription() when $default != null:
return $default(_that.id,_that.object,_that.cancel_at_period_end,_that.current_period_end,_that.current_period_start,_that.default_payment_method,_that.items,_that.metadata,_that.pending_setup_intent,_that.pending_update,_that.status,_that.application_fee_percent,_that.billing_cycle_anchor,_that.billing_thresholds,_that.cancel_at,_that.canceled_at,_that.collection_method,_that.created,_that.days_until_due,_that.default_source,_that.default_tax_rates,_that.discount,_that.ended_at,_that.livemode,_that.latest_invoice,_that.next_pending_invoice_item_invoice,_that.pause_collection,_that.pending_invoice_item_interval,_that.start_date,_that.transfer_data,_that.trial_end,_that.trial_start,_that.schedule,_that.customer,_that.plan,_that.updated_at,_that.last_synced_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Subscription implements Subscription {
   _Subscription({required this.id, this.object, required this.cancel_at_period_end, @JsonKey(name: 'current_period_end')@NullableTimestampConverter() this.current_period_end, @JsonKey(name: 'current_period_start')@NullableTimestampConverter() this.current_period_start, this.default_payment_method, required this.items, required this.metadata, this.pending_setup_intent, final  Map<String, dynamic>? pending_update, required this.status, this.application_fee_percent, @JsonKey(name: 'billing_cycle_anchor')@NullableTimestampConverter() this.billing_cycle_anchor, final  Map<String, dynamic>? billing_thresholds, @JsonKey(name: 'cancel_at')@NullableTimestampConverter() this.cancel_at, @JsonKey(name: 'canceled_at')@NullableTimestampConverter() this.canceled_at, this.collection_method, @JsonKey(name: 'created')@TimestampConverter() required this.created, this.days_until_due, this.default_source, @JsonKey(name: 'default_tax_rates') final  List<dynamic> default_tax_rates = const [], final  Map<String, dynamic>? discount, @JsonKey(name: 'ended_at')@NullableTimestampConverter() this.ended_at, required this.livemode, this.latest_invoice, this.next_pending_invoice_item_invoice, final  Map<String, dynamic>? pause_collection, final  Map<String, dynamic>? pending_invoice_item_interval, @JsonKey(name: 'start_date')@NullableTimestampConverter() this.start_date, final  Map<String, dynamic>? transfer_data, @JsonKey(name: 'trial_end')@NullableTimestampConverter() this.trial_end, @JsonKey(name: 'trial_start')@NullableTimestampConverter() this.trial_start, final  Map<String, dynamic>? schedule, this.customer, this.plan, @JsonKey(name: 'updated_at')@NullableTimestampConverter() this.updated_at, @JsonKey(name: 'last_synced_at')@NullableTimestampConverter() this.last_synced_at}): _pending_update = pending_update,_billing_thresholds = billing_thresholds,_default_tax_rates = default_tax_rates,_discount = discount,_pause_collection = pause_collection,_pending_invoice_item_interval = pending_invoice_item_interval,_transfer_data = transfer_data,_schedule = schedule;
  factory _Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);

@override final  String id;
@override final  String? object;
@override final  bool cancel_at_period_end;
@override@JsonKey(name: 'current_period_end')@NullableTimestampConverter() final  DateTime? current_period_end;
@override@JsonKey(name: 'current_period_start')@NullableTimestampConverter() final  DateTime? current_period_start;
@override final  String? default_payment_method;
@override final  SubscriptionItems items;
@override final  SubscriptionMetadata metadata;
@override final  String? pending_setup_intent;
 final  Map<String, dynamic>? _pending_update;
@override Map<String, dynamic>? get pending_update {
  final value = _pending_update;
  if (value == null) return null;
  if (_pending_update is EqualUnmodifiableMapView) return _pending_update;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String status;
@override final  double? application_fee_percent;
@override@JsonKey(name: 'billing_cycle_anchor')@NullableTimestampConverter() final  DateTime? billing_cycle_anchor;
 final  Map<String, dynamic>? _billing_thresholds;
@override Map<String, dynamic>? get billing_thresholds {
  final value = _billing_thresholds;
  if (value == null) return null;
  if (_billing_thresholds is EqualUnmodifiableMapView) return _billing_thresholds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'cancel_at')@NullableTimestampConverter() final  DateTime? cancel_at;
@override@JsonKey(name: 'canceled_at')@NullableTimestampConverter() final  DateTime? canceled_at;
@override final  String? collection_method;
@override@JsonKey(name: 'created')@TimestampConverter() final  DateTime created;
@override final  int? days_until_due;
@override final  String? default_source;
 final  List<dynamic> _default_tax_rates;
@override@JsonKey(name: 'default_tax_rates') List<dynamic> get default_tax_rates {
  if (_default_tax_rates is EqualUnmodifiableListView) return _default_tax_rates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_default_tax_rates);
}

 final  Map<String, dynamic>? _discount;
@override Map<String, dynamic>? get discount {
  final value = _discount;
  if (value == null) return null;
  if (_discount is EqualUnmodifiableMapView) return _discount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'ended_at')@NullableTimestampConverter() final  DateTime? ended_at;
@override final  bool livemode;
@override final  String? latest_invoice;
@override final  String? next_pending_invoice_item_invoice;
 final  Map<String, dynamic>? _pause_collection;
@override Map<String, dynamic>? get pause_collection {
  final value = _pause_collection;
  if (value == null) return null;
  if (_pause_collection is EqualUnmodifiableMapView) return _pause_collection;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _pending_invoice_item_interval;
@override Map<String, dynamic>? get pending_invoice_item_interval {
  final value = _pending_invoice_item_interval;
  if (value == null) return null;
  if (_pending_invoice_item_interval is EqualUnmodifiableMapView) return _pending_invoice_item_interval;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'start_date')@NullableTimestampConverter() final  DateTime? start_date;
 final  Map<String, dynamic>? _transfer_data;
@override Map<String, dynamic>? get transfer_data {
  final value = _transfer_data;
  if (value == null) return null;
  if (_transfer_data is EqualUnmodifiableMapView) return _transfer_data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'trial_end')@NullableTimestampConverter() final  DateTime? trial_end;
@override@JsonKey(name: 'trial_start')@NullableTimestampConverter() final  DateTime? trial_start;
 final  Map<String, dynamic>? _schedule;
@override Map<String, dynamic>? get schedule {
  final value = _schedule;
  if (value == null) return null;
  if (_schedule is EqualUnmodifiableMapView) return _schedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? customer;
@override final  String? plan;
// JSON string
@override@JsonKey(name: 'updated_at')@NullableTimestampConverter() final  DateTime? updated_at;
@override@JsonKey(name: 'last_synced_at')@NullableTimestampConverter() final  DateTime? last_synced_at;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionCopyWith<_Subscription> get copyWith => __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subscription&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.cancel_at_period_end, cancel_at_period_end) || other.cancel_at_period_end == cancel_at_period_end)&&(identical(other.current_period_end, current_period_end) || other.current_period_end == current_period_end)&&(identical(other.current_period_start, current_period_start) || other.current_period_start == current_period_start)&&(identical(other.default_payment_method, default_payment_method) || other.default_payment_method == default_payment_method)&&(identical(other.items, items) || other.items == items)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.pending_setup_intent, pending_setup_intent) || other.pending_setup_intent == pending_setup_intent)&&const DeepCollectionEquality().equals(other._pending_update, _pending_update)&&(identical(other.status, status) || other.status == status)&&(identical(other.application_fee_percent, application_fee_percent) || other.application_fee_percent == application_fee_percent)&&(identical(other.billing_cycle_anchor, billing_cycle_anchor) || other.billing_cycle_anchor == billing_cycle_anchor)&&const DeepCollectionEquality().equals(other._billing_thresholds, _billing_thresholds)&&(identical(other.cancel_at, cancel_at) || other.cancel_at == cancel_at)&&(identical(other.canceled_at, canceled_at) || other.canceled_at == canceled_at)&&(identical(other.collection_method, collection_method) || other.collection_method == collection_method)&&(identical(other.created, created) || other.created == created)&&(identical(other.days_until_due, days_until_due) || other.days_until_due == days_until_due)&&(identical(other.default_source, default_source) || other.default_source == default_source)&&const DeepCollectionEquality().equals(other._default_tax_rates, _default_tax_rates)&&const DeepCollectionEquality().equals(other._discount, _discount)&&(identical(other.ended_at, ended_at) || other.ended_at == ended_at)&&(identical(other.livemode, livemode) || other.livemode == livemode)&&(identical(other.latest_invoice, latest_invoice) || other.latest_invoice == latest_invoice)&&(identical(other.next_pending_invoice_item_invoice, next_pending_invoice_item_invoice) || other.next_pending_invoice_item_invoice == next_pending_invoice_item_invoice)&&const DeepCollectionEquality().equals(other._pause_collection, _pause_collection)&&const DeepCollectionEquality().equals(other._pending_invoice_item_interval, _pending_invoice_item_interval)&&(identical(other.start_date, start_date) || other.start_date == start_date)&&const DeepCollectionEquality().equals(other._transfer_data, _transfer_data)&&(identical(other.trial_end, trial_end) || other.trial_end == trial_end)&&(identical(other.trial_start, trial_start) || other.trial_start == trial_start)&&const DeepCollectionEquality().equals(other._schedule, _schedule)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.last_synced_at, last_synced_at) || other.last_synced_at == last_synced_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,object,cancel_at_period_end,current_period_end,current_period_start,default_payment_method,items,metadata,pending_setup_intent,const DeepCollectionEquality().hash(_pending_update),status,application_fee_percent,billing_cycle_anchor,const DeepCollectionEquality().hash(_billing_thresholds),cancel_at,canceled_at,collection_method,created,days_until_due,default_source,const DeepCollectionEquality().hash(_default_tax_rates),const DeepCollectionEquality().hash(_discount),ended_at,livemode,latest_invoice,next_pending_invoice_item_invoice,const DeepCollectionEquality().hash(_pause_collection),const DeepCollectionEquality().hash(_pending_invoice_item_interval),start_date,const DeepCollectionEquality().hash(_transfer_data),trial_end,trial_start,const DeepCollectionEquality().hash(_schedule),customer,plan,updated_at,last_synced_at]);

@override
String toString() {
  return 'Subscription(id: $id, object: $object, cancel_at_period_end: $cancel_at_period_end, current_period_end: $current_period_end, current_period_start: $current_period_start, default_payment_method: $default_payment_method, items: $items, metadata: $metadata, pending_setup_intent: $pending_setup_intent, pending_update: $pending_update, status: $status, application_fee_percent: $application_fee_percent, billing_cycle_anchor: $billing_cycle_anchor, billing_thresholds: $billing_thresholds, cancel_at: $cancel_at, canceled_at: $canceled_at, collection_method: $collection_method, created: $created, days_until_due: $days_until_due, default_source: $default_source, default_tax_rates: $default_tax_rates, discount: $discount, ended_at: $ended_at, livemode: $livemode, latest_invoice: $latest_invoice, next_pending_invoice_item_invoice: $next_pending_invoice_item_invoice, pause_collection: $pause_collection, pending_invoice_item_interval: $pending_invoice_item_interval, start_date: $start_date, transfer_data: $transfer_data, trial_end: $trial_end, trial_start: $trial_start, schedule: $schedule, customer: $customer, plan: $plan, updated_at: $updated_at, last_synced_at: $last_synced_at)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionCopyWith<$Res> implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(_Subscription value, $Res Function(_Subscription) _then) = __$SubscriptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String? object, bool cancel_at_period_end,@JsonKey(name: 'current_period_end')@NullableTimestampConverter() DateTime? current_period_end,@JsonKey(name: 'current_period_start')@NullableTimestampConverter() DateTime? current_period_start, String? default_payment_method, SubscriptionItems items, SubscriptionMetadata metadata, String? pending_setup_intent, Map<String, dynamic>? pending_update, String status, double? application_fee_percent,@JsonKey(name: 'billing_cycle_anchor')@NullableTimestampConverter() DateTime? billing_cycle_anchor, Map<String, dynamic>? billing_thresholds,@JsonKey(name: 'cancel_at')@NullableTimestampConverter() DateTime? cancel_at,@JsonKey(name: 'canceled_at')@NullableTimestampConverter() DateTime? canceled_at, String? collection_method,@JsonKey(name: 'created')@TimestampConverter() DateTime created, int? days_until_due, String? default_source,@JsonKey(name: 'default_tax_rates') List<dynamic> default_tax_rates, Map<String, dynamic>? discount,@JsonKey(name: 'ended_at')@NullableTimestampConverter() DateTime? ended_at, bool livemode, String? latest_invoice, String? next_pending_invoice_item_invoice, Map<String, dynamic>? pause_collection, Map<String, dynamic>? pending_invoice_item_interval,@JsonKey(name: 'start_date')@NullableTimestampConverter() DateTime? start_date, Map<String, dynamic>? transfer_data,@JsonKey(name: 'trial_end')@NullableTimestampConverter() DateTime? trial_end,@JsonKey(name: 'trial_start')@NullableTimestampConverter() DateTime? trial_start, Map<String, dynamic>? schedule, String? customer, String? plan,@JsonKey(name: 'updated_at')@NullableTimestampConverter() DateTime? updated_at,@JsonKey(name: 'last_synced_at')@NullableTimestampConverter() DateTime? last_synced_at
});


@override $SubscriptionItemsCopyWith<$Res> get items;@override $SubscriptionMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(this._self, this._then);

  final _Subscription _self;
  final $Res Function(_Subscription) _then;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = freezed,Object? cancel_at_period_end = null,Object? current_period_end = freezed,Object? current_period_start = freezed,Object? default_payment_method = freezed,Object? items = null,Object? metadata = null,Object? pending_setup_intent = freezed,Object? pending_update = freezed,Object? status = null,Object? application_fee_percent = freezed,Object? billing_cycle_anchor = freezed,Object? billing_thresholds = freezed,Object? cancel_at = freezed,Object? canceled_at = freezed,Object? collection_method = freezed,Object? created = null,Object? days_until_due = freezed,Object? default_source = freezed,Object? default_tax_rates = null,Object? discount = freezed,Object? ended_at = freezed,Object? livemode = null,Object? latest_invoice = freezed,Object? next_pending_invoice_item_invoice = freezed,Object? pause_collection = freezed,Object? pending_invoice_item_interval = freezed,Object? start_date = freezed,Object? transfer_data = freezed,Object? trial_end = freezed,Object? trial_start = freezed,Object? schedule = freezed,Object? customer = freezed,Object? plan = freezed,Object? updated_at = freezed,Object? last_synced_at = freezed,}) {
  return _then(_Subscription(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,cancel_at_period_end: null == cancel_at_period_end ? _self.cancel_at_period_end : cancel_at_period_end // ignore: cast_nullable_to_non_nullable
as bool,current_period_end: freezed == current_period_end ? _self.current_period_end : current_period_end // ignore: cast_nullable_to_non_nullable
as DateTime?,current_period_start: freezed == current_period_start ? _self.current_period_start : current_period_start // ignore: cast_nullable_to_non_nullable
as DateTime?,default_payment_method: freezed == default_payment_method ? _self.default_payment_method : default_payment_method // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as SubscriptionItems,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as SubscriptionMetadata,pending_setup_intent: freezed == pending_setup_intent ? _self.pending_setup_intent : pending_setup_intent // ignore: cast_nullable_to_non_nullable
as String?,pending_update: freezed == pending_update ? _self._pending_update : pending_update // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,application_fee_percent: freezed == application_fee_percent ? _self.application_fee_percent : application_fee_percent // ignore: cast_nullable_to_non_nullable
as double?,billing_cycle_anchor: freezed == billing_cycle_anchor ? _self.billing_cycle_anchor : billing_cycle_anchor // ignore: cast_nullable_to_non_nullable
as DateTime?,billing_thresholds: freezed == billing_thresholds ? _self._billing_thresholds : billing_thresholds // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,cancel_at: freezed == cancel_at ? _self.cancel_at : cancel_at // ignore: cast_nullable_to_non_nullable
as DateTime?,canceled_at: freezed == canceled_at ? _self.canceled_at : canceled_at // ignore: cast_nullable_to_non_nullable
as DateTime?,collection_method: freezed == collection_method ? _self.collection_method : collection_method // ignore: cast_nullable_to_non_nullable
as String?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,days_until_due: freezed == days_until_due ? _self.days_until_due : days_until_due // ignore: cast_nullable_to_non_nullable
as int?,default_source: freezed == default_source ? _self.default_source : default_source // ignore: cast_nullable_to_non_nullable
as String?,default_tax_rates: null == default_tax_rates ? _self._default_tax_rates : default_tax_rates // ignore: cast_nullable_to_non_nullable
as List<dynamic>,discount: freezed == discount ? _self._discount : discount // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ended_at: freezed == ended_at ? _self.ended_at : ended_at // ignore: cast_nullable_to_non_nullable
as DateTime?,livemode: null == livemode ? _self.livemode : livemode // ignore: cast_nullable_to_non_nullable
as bool,latest_invoice: freezed == latest_invoice ? _self.latest_invoice : latest_invoice // ignore: cast_nullable_to_non_nullable
as String?,next_pending_invoice_item_invoice: freezed == next_pending_invoice_item_invoice ? _self.next_pending_invoice_item_invoice : next_pending_invoice_item_invoice // ignore: cast_nullable_to_non_nullable
as String?,pause_collection: freezed == pause_collection ? _self._pause_collection : pause_collection // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,pending_invoice_item_interval: freezed == pending_invoice_item_interval ? _self._pending_invoice_item_interval : pending_invoice_item_interval // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,start_date: freezed == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as DateTime?,transfer_data: freezed == transfer_data ? _self._transfer_data : transfer_data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,trial_end: freezed == trial_end ? _self.trial_end : trial_end // ignore: cast_nullable_to_non_nullable
as DateTime?,trial_start: freezed == trial_start ? _self.trial_start : trial_start // ignore: cast_nullable_to_non_nullable
as DateTime?,schedule: freezed == schedule ? _self._schedule : schedule // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as String?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as DateTime?,last_synced_at: freezed == last_synced_at ? _self.last_synced_at : last_synced_at // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionItemsCopyWith<$Res> get items {
  
  return $SubscriptionItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionMetadataCopyWith<$Res> get metadata {
  
  return $SubscriptionMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

// dart format on
