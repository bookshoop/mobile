// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInDataImpl _$$SignInDataImplFromJson(Map<String, dynamic> json) =>
    _$SignInDataImpl(
      socialId: json['socialId'] as String,
      socialProvider: json['socialProvider'] as String,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      mobile: json['mobile'] as String?,
      pushToken: json['pushToken'] as String?,
    );

Map<String, dynamic> _$$SignInDataImplToJson(_$SignInDataImpl instance) =>
    <String, dynamic>{
      'socialId': instance.socialId,
      'socialProvider': instance.socialProvider,
      'birthday': instance.birthday?.toIso8601String(),
      'mobile': instance.mobile,
      'pushToken': instance.pushToken,
    };
