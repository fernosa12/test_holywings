// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerHomeImpl _$$BannerHomeImplFromJson(Map<String, dynamic> json) =>
    _$BannerHomeImpl(
      id: (json['id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      distance: json['distance'],
      diffDay: (json['diff_day'] as num?)?.toInt(),
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      status: (json['status'] as num?)?.toInt(),
      statusText: json['status_text'] as String?,
      howToUse: json['how_to_use'] as String?,
      termsAndCondition: json['terms_and_condition'] as String?,
      url: json['url'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      standingAvailable: (json['standing_available'] as num?)?.toInt(),
      standingAvailableText: json['standing_available_text'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      whatsapp: json['whatsapp'] as String?,
      eventDate: json['event_date'] == null
          ? null
          : DateTime.parse(json['event_date'] as String),
      openGate: json['open_gate'] as String?,
      reservationType: (json['reservation_type'] as num?)?.toInt(),
      reservationTypeText: json['reservation_type_text'] as String?,
      availabilityType: (json['availability_type'] as num?)?.toInt(),
      availabilityTypeText: json['availability_type_text'] as String?,
      isPromoted: (json['is_promoted'] as num?)?.toInt(),
      isPromotedText: json['is_promoted_text'] as String?,
      isPriceUploaded: json['is_price_uploaded'] as bool? ?? false,
      reservationPaymentType:
          (json['reservation_payment_type'] as num?)?.toInt(),
      reservationPaymentTypeText:
          json['reservation_payment_type_text'] as String?,
      isSoldOut: (json['is_sold_out'] as num?)?.toInt(),
      isSoldOutStanding: (json['is_sold_out_standing'] as num?)?.toInt(),
      credit: json['credit'],
      sponsor: json['sponsor'],
      generalAdmissionUrl: json['general_admission_url'] as String?,
      inclusionList: json['inclusion_list'],
      useAffiliatorCode: json['use_affiliator_code'] as bool? ?? false,
      maxStandingCapacity: (json['max_standing_capacity'] as num?)?.toInt(),
      talentDescriptionUrl: json['talent_description_url'],
      isUsingTicket: json['is_using_ticket'] as bool? ?? false,
      houseRulesUrl: json['house_rules_url'],
      location: json['location'],
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      potraitImage: json['potrait_image'] as String?,
      redirectInternalSetting: json['redirect_internal_setting'] == null
          ? null
          : RedirectInternalSetting.fromJson(
              json['redirect_internal_setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BannerHomeImplToJson(_$BannerHomeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'title': instance.title,
      'distance': instance.distance,
      'diff_day': instance.diffDay,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'status': instance.status,
      'status_text': instance.statusText,
      'how_to_use': instance.howToUse,
      'terms_and_condition': instance.termsAndCondition,
      'url': instance.url,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'standing_available': instance.standingAvailable,
      'standing_available_text': instance.standingAvailableText,
      'created_at': instance.createdAt?.toIso8601String(),
      'whatsapp': instance.whatsapp,
      'event_date': instance.eventDate?.toIso8601String(),
      'open_gate': instance.openGate,
      'reservation_type': instance.reservationType,
      'reservation_type_text': instance.reservationTypeText,
      'availability_type': instance.availabilityType,
      'availability_type_text': instance.availabilityTypeText,
      'is_promoted': instance.isPromoted,
      'is_promoted_text': instance.isPromotedText,
      'is_price_uploaded': instance.isPriceUploaded,
      'reservation_payment_type': instance.reservationPaymentType,
      'reservation_payment_type_text': instance.reservationPaymentTypeText,
      'is_sold_out': instance.isSoldOut,
      'is_sold_out_standing': instance.isSoldOutStanding,
      'credit': instance.credit,
      'sponsor': instance.sponsor,
      'general_admission_url': instance.generalAdmissionUrl,
      'inclusion_list': instance.inclusionList,
      'use_affiliator_code': instance.useAffiliatorCode,
      'max_standing_capacity': instance.maxStandingCapacity,
      'talent_description_url': instance.talentDescriptionUrl,
      'is_using_ticket': instance.isUsingTicket,
      'house_rules_url': instance.houseRulesUrl,
      'location': instance.location,
      'tags': instance.tags,
      'potrait_image': instance.potraitImage,
      'redirect_internal_setting': instance.redirectInternalSetting,
    };

_$RedirectInternalSettingImpl _$$RedirectInternalSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$RedirectInternalSettingImpl(
      redirectInternalSettingEnum: json['enum'] as String?,
      enumDescription: json['enum_description'] as String?,
      additionalParam: json['additional_param'],
    );

Map<String, dynamic> _$$RedirectInternalSettingImplToJson(
        _$RedirectInternalSettingImpl instance) =>
    <String, dynamic>{
      'enum': instance.redirectInternalSettingEnum,
      'enum_description': instance.enumDescription,
      'additional_param': instance.additionalParam,
    };
