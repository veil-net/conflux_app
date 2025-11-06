// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionMetadata _$SubscriptionMetadataFromJson(
  Map<String, dynamic> json,
) => _SubscriptionMetadata(
  user_id: json['user_id'] as String,
  service_tier: json['service_tier'] as String,
  type: json['type'] as String?,
);

Map<String, dynamic> _$SubscriptionMetadataToJson(
  _SubscriptionMetadata instance,
) => <String, dynamic>{
  'user_id': instance.user_id,
  'service_tier': instance.service_tier,
  'type': instance.type,
};

_SubscriptionPlan _$SubscriptionPlanFromJson(Map<String, dynamic> json) =>
    _SubscriptionPlan(
      id: json['id'] as String,
      object: json['object'] as String?,
      active: json['active'] as bool,
      amount: (json['amount'] as num).toInt(),
      amount_decimal: json['amount_decimal'] as String?,
      billing_scheme: json['billing_scheme'] as String,
      created: const TimestampConverter().fromJson(json['created']),
      currency: json['currency'] as String,
      interval: json['interval'] as String,
      interval_count: (json['interval_count'] as num).toInt(),
      livemode: json['livemode'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>?,
      meter: json['meter'] as String?,
      nickname: json['nickname'] as String?,
      product: json['product'] as String,
      tiers_mode: json['tiers_mode'] as String?,
      transform_usage: json['transform_usage'] as String?,
      trial_period_days: (json['trial_period_days'] as num?)?.toInt(),
      usage_type: json['usage_type'] as String,
    );

Map<String, dynamic> _$SubscriptionPlanToJson(_SubscriptionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'active': instance.active,
      'amount': instance.amount,
      'amount_decimal': instance.amount_decimal,
      'billing_scheme': instance.billing_scheme,
      'created': const TimestampConverter().toJson(instance.created),
      'currency': instance.currency,
      'interval': instance.interval,
      'interval_count': instance.interval_count,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'meter': instance.meter,
      'nickname': instance.nickname,
      'product': instance.product,
      'tiers_mode': instance.tiers_mode,
      'transform_usage': instance.transform_usage,
      'trial_period_days': instance.trial_period_days,
      'usage_type': instance.usage_type,
    };

_SubscriptionPriceRecurring _$SubscriptionPriceRecurringFromJson(
  Map<String, dynamic> json,
) => _SubscriptionPriceRecurring(
  meter: json['meter'] as String?,
  interval: json['interval'] as String,
  usage_type: json['usage_type'] as String,
  interval_count: (json['interval_count'] as num).toInt(),
  trial_period_days: (json['trial_period_days'] as num?)?.toInt(),
);

Map<String, dynamic> _$SubscriptionPriceRecurringToJson(
  _SubscriptionPriceRecurring instance,
) => <String, dynamic>{
  'meter': instance.meter,
  'interval': instance.interval,
  'usage_type': instance.usage_type,
  'interval_count': instance.interval_count,
  'trial_period_days': instance.trial_period_days,
};

_SubscriptionPrice _$SubscriptionPriceFromJson(Map<String, dynamic> json) =>
    _SubscriptionPrice(
      id: json['id'] as String,
      type: json['type'] as String,
      active: json['active'] as bool,
      object: json['object'] as String?,
      created: const TimestampConverter().fromJson(json['created']),
      product: json['product'] as String,
      currency: json['currency'] as String,
      livemode: json['livemode'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>?,
      nickname: json['nickname'] as String?,
      recurring: SubscriptionPriceRecurring.fromJson(
        json['recurring'] as Map<String, dynamic>,
      ),
      lookup_key: json['lookup_key'] as String?,
      tiers_mode: json['tiers_mode'] as String?,
      unit_amount: (json['unit_amount'] as num).toInt(),
      tax_behavior: json['tax_behavior'] as String?,
      billing_scheme: json['billing_scheme'] as String,
      custom_unit_amount: json['custom_unit_amount'] as String?,
      transform_quantity: json['transform_quantity'] as String?,
      unit_amount_decimal: json['unit_amount_decimal'] as String?,
    );

Map<String, dynamic> _$SubscriptionPriceToJson(_SubscriptionPrice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'active': instance.active,
      'object': instance.object,
      'created': const TimestampConverter().toJson(instance.created),
      'product': instance.product,
      'currency': instance.currency,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'nickname': instance.nickname,
      'recurring': instance.recurring,
      'lookup_key': instance.lookup_key,
      'tiers_mode': instance.tiers_mode,
      'unit_amount': instance.unit_amount,
      'tax_behavior': instance.tax_behavior,
      'billing_scheme': instance.billing_scheme,
      'custom_unit_amount': instance.custom_unit_amount,
      'transform_quantity': instance.transform_quantity,
      'unit_amount_decimal': instance.unit_amount_decimal,
    };

_SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) =>
    _SubscriptionItem(
      id: json['id'] as String,
      plan: SubscriptionPlan.fromJson(json['plan'] as Map<String, dynamic>),
      price: SubscriptionPrice.fromJson(json['price'] as Map<String, dynamic>),
      object: json['object'] as String?,
      created: const TimestampConverter().fromJson(json['created']),
      metadata: json['metadata'] as Map<String, dynamic>?,
      quantity: (json['quantity'] as num).toInt(),
      discounts: json['discounts'] as List<dynamic>? ?? const [],
      tax_rates: json['tax_rates'] as List<dynamic>? ?? const [],
      subscription: json['subscription'] as String,
      billing_thresholds: json['billing_thresholds'] as Map<String, dynamic>?,
      current_period_end: const NullableTimestampConverter().fromJson(
        json['current_period_end'],
      ),
      current_period_start: const NullableTimestampConverter().fromJson(
        json['current_period_start'],
      ),
    );

Map<String, dynamic> _$SubscriptionItemToJson(_SubscriptionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plan': instance.plan,
      'price': instance.price,
      'object': instance.object,
      'created': const TimestampConverter().toJson(instance.created),
      'metadata': instance.metadata,
      'quantity': instance.quantity,
      'discounts': instance.discounts,
      'tax_rates': instance.tax_rates,
      'subscription': instance.subscription,
      'billing_thresholds': instance.billing_thresholds,
      'current_period_end': const NullableTimestampConverter().toJson(
        instance.current_period_end,
      ),
      'current_period_start': const NullableTimestampConverter().toJson(
        instance.current_period_start,
      ),
    };

_SubscriptionItems _$SubscriptionItemsFromJson(Map<String, dynamic> json) =>
    _SubscriptionItems(
      url: json['url'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => SubscriptionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      object: json['object'] as String,
      has_more: json['has_more'] as bool,
      total_count: (json['total_count'] as num).toInt(),
    );

Map<String, dynamic> _$SubscriptionItemsToJson(_SubscriptionItems instance) =>
    <String, dynamic>{
      'url': instance.url,
      'data': instance.data,
      'object': instance.object,
      'has_more': instance.has_more,
      'total_count': instance.total_count,
    };

_Subscription _$SubscriptionFromJson(
  Map<String, dynamic> json,
) => _Subscription(
  id: json['id'] as String,
  object: json['object'] as String?,
  cancel_at_period_end: json['cancel_at_period_end'] as bool,
  current_period_end: const NullableTimestampConverter().fromJson(
    json['current_period_end'],
  ),
  current_period_start: const NullableTimestampConverter().fromJson(
    json['current_period_start'],
  ),
  default_payment_method: json['default_payment_method'] as String?,
  items: SubscriptionItems.fromJson(json['items'] as Map<String, dynamic>),
  metadata: SubscriptionMetadata.fromJson(
    json['metadata'] as Map<String, dynamic>,
  ),
  pending_setup_intent: json['pending_setup_intent'] as String?,
  pending_update: json['pending_update'] as Map<String, dynamic>?,
  status: json['status'] as String,
  application_fee_percent: (json['application_fee_percent'] as num?)
      ?.toDouble(),
  billing_cycle_anchor: const NullableTimestampConverter().fromJson(
    json['billing_cycle_anchor'],
  ),
  billing_thresholds: json['billing_thresholds'] as Map<String, dynamic>?,
  cancel_at: const NullableTimestampConverter().fromJson(json['cancel_at']),
  canceled_at: const NullableTimestampConverter().fromJson(json['canceled_at']),
  collection_method: json['collection_method'] as String?,
  created: const TimestampConverter().fromJson(json['created']),
  days_until_due: (json['days_until_due'] as num?)?.toInt(),
  default_source: json['default_source'] as String?,
  default_tax_rates: json['default_tax_rates'] as List<dynamic>? ?? const [],
  discount: json['discount'] as Map<String, dynamic>?,
  ended_at: const NullableTimestampConverter().fromJson(json['ended_at']),
  livemode: json['livemode'] as bool,
  latest_invoice: json['latest_invoice'] as String?,
  next_pending_invoice_item_invoice:
      json['next_pending_invoice_item_invoice'] as String?,
  pause_collection: json['pause_collection'] as Map<String, dynamic>?,
  pending_invoice_item_interval:
      json['pending_invoice_item_interval'] as Map<String, dynamic>?,
  start_date: const NullableTimestampConverter().fromJson(json['start_date']),
  transfer_data: json['transfer_data'] as Map<String, dynamic>?,
  trial_end: const NullableTimestampConverter().fromJson(json['trial_end']),
  trial_start: const NullableTimestampConverter().fromJson(json['trial_start']),
  schedule: json['schedule'] as Map<String, dynamic>?,
  customer: json['customer'] as String?,
  plan: json['plan'] as String?,
  updated_at: const NullableTimestampConverter().fromJson(json['updated_at']),
  last_synced_at: const NullableTimestampConverter().fromJson(
    json['last_synced_at'],
  ),
);

Map<String, dynamic> _$SubscriptionToJson(
  _Subscription instance,
) => <String, dynamic>{
  'id': instance.id,
  'object': instance.object,
  'cancel_at_period_end': instance.cancel_at_period_end,
  'current_period_end': const NullableTimestampConverter().toJson(
    instance.current_period_end,
  ),
  'current_period_start': const NullableTimestampConverter().toJson(
    instance.current_period_start,
  ),
  'default_payment_method': instance.default_payment_method,
  'items': instance.items,
  'metadata': instance.metadata,
  'pending_setup_intent': instance.pending_setup_intent,
  'pending_update': instance.pending_update,
  'status': instance.status,
  'application_fee_percent': instance.application_fee_percent,
  'billing_cycle_anchor': const NullableTimestampConverter().toJson(
    instance.billing_cycle_anchor,
  ),
  'billing_thresholds': instance.billing_thresholds,
  'cancel_at': const NullableTimestampConverter().toJson(instance.cancel_at),
  'canceled_at': const NullableTimestampConverter().toJson(
    instance.canceled_at,
  ),
  'collection_method': instance.collection_method,
  'created': const TimestampConverter().toJson(instance.created),
  'days_until_due': instance.days_until_due,
  'default_source': instance.default_source,
  'default_tax_rates': instance.default_tax_rates,
  'discount': instance.discount,
  'ended_at': const NullableTimestampConverter().toJson(instance.ended_at),
  'livemode': instance.livemode,
  'latest_invoice': instance.latest_invoice,
  'next_pending_invoice_item_invoice':
      instance.next_pending_invoice_item_invoice,
  'pause_collection': instance.pause_collection,
  'pending_invoice_item_interval': instance.pending_invoice_item_interval,
  'start_date': const NullableTimestampConverter().toJson(instance.start_date),
  'transfer_data': instance.transfer_data,
  'trial_end': const NullableTimestampConverter().toJson(instance.trial_end),
  'trial_start': const NullableTimestampConverter().toJson(
    instance.trial_start,
  ),
  'schedule': instance.schedule,
  'customer': instance.customer,
  'plan': instance.plan,
  'updated_at': const NullableTimestampConverter().toJson(instance.updated_at),
  'last_synced_at': const NullableTimestampConverter().toJson(
    instance.last_synced_at,
  ),
};
