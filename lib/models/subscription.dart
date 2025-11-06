import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
abstract class SubscriptionMetadata with _$SubscriptionMetadata {
  factory SubscriptionMetadata({
    required String user_id,
    required String service_tier,
    String? type,
  }) = _SubscriptionMetadata;

  factory SubscriptionMetadata.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionMetadataFromJson(json);
}

@freezed
abstract class SubscriptionPlan with _$SubscriptionPlan {
  factory SubscriptionPlan({
    required String id,
    String? object,
    required bool active,
    required int amount,
    String? amount_decimal,
    required String billing_scheme,
    @JsonKey(name: 'created') @TimestampConverter() required DateTime created,
    required String currency,
    required String interval,
    required int interval_count,
    required bool livemode,
    Map<String, dynamic>? metadata,
    String? meter,
    String? nickname,
    required String product,
    String? tiers_mode,
    String? transform_usage,
    int? trial_period_days,
    required String usage_type,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);
}

@freezed
abstract class SubscriptionPriceRecurring with _$SubscriptionPriceRecurring {
  factory SubscriptionPriceRecurring({
    String? meter,
    required String interval,
    required String usage_type,
    required int interval_count,
    int? trial_period_days,
  }) = _SubscriptionPriceRecurring;

  factory SubscriptionPriceRecurring.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPriceRecurringFromJson(json);
}

@freezed
abstract class SubscriptionPrice with _$SubscriptionPrice {
  factory SubscriptionPrice({
    required String id,
    required String type,
    required bool active,
    String? object,
    @JsonKey(name: 'created') @TimestampConverter() required DateTime created,
    required String product,
    required String currency,
    required bool livemode,
    Map<String, dynamic>? metadata,
    String? nickname,
    required SubscriptionPriceRecurring recurring,
    String? lookup_key,
    String? tiers_mode,
    required int unit_amount,
    String? tax_behavior,
    required String billing_scheme,
    String? custom_unit_amount,
    String? transform_quantity,
    String? unit_amount_decimal,
  }) = _SubscriptionPrice;

  factory SubscriptionPrice.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPriceFromJson(json);
}

@freezed
abstract class SubscriptionItem with _$SubscriptionItem {
  factory SubscriptionItem({
    required String id,
    required SubscriptionPlan plan,
    required SubscriptionPrice price,
    String? object,
    @JsonKey(name: 'created') @TimestampConverter() required DateTime created,
    Map<String, dynamic>? metadata,
    required int quantity,
    @JsonKey(name: 'discounts') @Default([]) List<dynamic> discounts,
    @JsonKey(name: 'tax_rates') @Default([]) List<dynamic> tax_rates,
    required String subscription,
    Map<String, dynamic>? billing_thresholds,
    @JsonKey(name: 'current_period_end')
    @NullableTimestampConverter()
    DateTime? current_period_end,
    @JsonKey(name: 'current_period_start')
    @NullableTimestampConverter()
    DateTime? current_period_start,
  }) = _SubscriptionItem;

  factory SubscriptionItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemFromJson(json);
}

@freezed
abstract class SubscriptionItems with _$SubscriptionItems {
  factory SubscriptionItems({
    required String url,
    @JsonKey(name: 'data') required List<SubscriptionItem> data,
    required String object,
    required bool has_more,
    required int total_count,
  }) = _SubscriptionItems;

  factory SubscriptionItems.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemsFromJson(json);
}

@freezed
abstract class Subscription with _$Subscription {
  factory Subscription({
    required String id,
    String? object,
    required bool cancel_at_period_end,
    @JsonKey(name: 'current_period_end')
    @NullableTimestampConverter()
    DateTime? current_period_end,
    @JsonKey(name: 'current_period_start')
    @NullableTimestampConverter()
    DateTime? current_period_start,
    String? default_payment_method,
    required SubscriptionItems items,
    required SubscriptionMetadata metadata,
    String? pending_setup_intent,
    Map<String, dynamic>? pending_update,
    required String status,
    double? application_fee_percent,
    @JsonKey(name: 'billing_cycle_anchor')
    @NullableTimestampConverter()
    DateTime? billing_cycle_anchor,
    Map<String, dynamic>? billing_thresholds,
    @JsonKey(name: 'cancel_at')
    @NullableTimestampConverter()
    DateTime? cancel_at,
    @JsonKey(name: 'canceled_at')
    @NullableTimestampConverter()
    DateTime? canceled_at,
    String? collection_method,
    @JsonKey(name: 'created') @TimestampConverter() required DateTime created,
    int? days_until_due,
    String? default_source,
    @JsonKey(name: 'default_tax_rates')
    @Default([])
    List<dynamic> default_tax_rates,
    Map<String, dynamic>? discount,
    @JsonKey(name: 'ended_at') @NullableTimestampConverter() DateTime? ended_at,
    required bool livemode,
    String? latest_invoice,
    String? next_pending_invoice_item_invoice,
    Map<String, dynamic>? pause_collection,
    Map<String, dynamic>? pending_invoice_item_interval,
    @JsonKey(name: 'start_date')
    @NullableTimestampConverter()
    DateTime? start_date,
    Map<String, dynamic>? transfer_data,
    @JsonKey(name: 'trial_end')
    @NullableTimestampConverter()
    DateTime? trial_end,
    @JsonKey(name: 'trial_start')
    @NullableTimestampConverter()
    DateTime? trial_start,
    Map<String, dynamic>? schedule,
    String? customer,
    String? plan, // JSON string
    @JsonKey(name: 'updated_at')
    @NullableTimestampConverter()
    DateTime? updated_at,
    @JsonKey(name: 'last_synced_at')
    @NullableTimestampConverter()
    DateTime? last_synced_at,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}


class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json == null) {
      throw ArgumentError('Timestamp cannot be null for required field');
    }
    if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json * 1000, isUtc: true);
    }
    if (json is String) {
      return DateTime.parse(json);
    }
    throw ArgumentError('Invalid timestamp format: $json');
  }

  @override
  dynamic toJson(DateTime object) => object.toIso8601String();
}

class NullableTimestampConverter implements JsonConverter<DateTime?, dynamic> {
  const NullableTimestampConverter();

  @override
  DateTime? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json * 1000, isUtc: true);
    }
    if (json is String) {
      return DateTime.parse(json);
    }
    throw ArgumentError('Invalid timestamp format: $json');
  }

  @override
  dynamic toJson(DateTime? object) => object?.toIso8601String();
}