// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_user.freezed.dart';
part 'local_user.g.dart';

@freezed
class LocalUser with _$LocalUser {
  const LocalUser._();
  factory LocalUser({
    @JsonKey(name: 'id') required String userId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'sellerStatus') required int sellerStatus,
    @JsonKey(name: 'token') required String token,
    @Default(false) bool isSellerMode,
  }) = _LocalUser;

  factory LocalUser.fromJson(Map<String, dynamic> json) =>
      _$LocalUserFromJson(json);
}
