import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_home.freezed.dart';
part 'banner_home.g.dart';

@freezed
class BannerHome with _$BannerHome {
    const factory BannerHome({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "distance")
        dynamic distance,
        @JsonKey(name: "diff_day")
        int? diffDay,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "image_url")
        String? imageUrl,
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "status_text")
        String? statusText,
        @JsonKey(name: "how_to_use")
        String? howToUse,
        @JsonKey(name: "terms_and_condition")
        String? termsAndCondition,
        @JsonKey(name: "url")
        String? url,
        @JsonKey(name: "start_date")
        DateTime? startDate,
        @JsonKey(name: "end_date")
        DateTime? endDate,
        @JsonKey(name: "standing_available")
        int? standingAvailable,
        @JsonKey(name: "standing_available_text")
        String? standingAvailableText,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "whatsapp")
        String? whatsapp,
        @JsonKey(name: "event_date")
        DateTime? eventDate,
        @JsonKey(name: "open_gate")
        String? openGate,
        @JsonKey(name: "reservation_type")
        int? reservationType,
        @JsonKey(name: "reservation_type_text")
        String? reservationTypeText,
        @JsonKey(name: "availability_type")
        int? availabilityType,
        @JsonKey(name: "availability_type_text")
        String? availabilityTypeText,
        @JsonKey(name: "is_promoted")
        int? isPromoted,
        @JsonKey(name: "is_promoted_text")
        String? isPromotedText,
        @Default(false)@JsonKey(name: "is_price_uploaded")
        bool isPriceUploaded,
        @JsonKey(name: "reservation_payment_type")
        int? reservationPaymentType,
        @JsonKey(name: "reservation_payment_type_text")
        String? reservationPaymentTypeText,
        @JsonKey(name: "is_sold_out")
        int? isSoldOut,
        @JsonKey(name: "is_sold_out_standing")
        int? isSoldOutStanding,
        @JsonKey(name: "credit")
        dynamic credit,
        @JsonKey(name: "sponsor")
        dynamic sponsor,
        @JsonKey(name: "general_admission_url")
        String? generalAdmissionUrl,
        @JsonKey(name: "inclusion_list")
        dynamic inclusionList,
        @Default(false)@JsonKey(name: "use_affiliator_code")
        bool useAffiliatorCode,
        @JsonKey(name: "max_standing_capacity")
        int? maxStandingCapacity,
        @JsonKey(name: "talent_description_url")
        dynamic talentDescriptionUrl,
        @Default(false)@JsonKey(name: "is_using_ticket")
        bool isUsingTicket,
        @JsonKey(name: "house_rules_url")
        dynamic houseRulesUrl,
        @JsonKey(name: "location")
        dynamic location,
        @JsonKey(name: "tags")
        List<String>? tags,
        @JsonKey(name: "potrait_image")
        String? potraitImage,
        @JsonKey(name: "redirect_internal_setting")
        RedirectInternalSetting? redirectInternalSetting,
    }) = _BannerHome;

    factory BannerHome.fromJson(Map<String, dynamic> json) => _$BannerHomeFromJson(json);
}

@freezed
class RedirectInternalSetting with _$RedirectInternalSetting {
    const factory RedirectInternalSetting({
        @JsonKey(name: "enum")
        String? redirectInternalSettingEnum,
        @JsonKey(name: "enum_description")
        String? enumDescription,
        @JsonKey(name: "additional_param")
        dynamic additionalParam,
    }) = _RedirectInternalSetting;

    factory RedirectInternalSetting.fromJson(Map<String, dynamic> json) => _$RedirectInternalSettingFromJson(json);
}
