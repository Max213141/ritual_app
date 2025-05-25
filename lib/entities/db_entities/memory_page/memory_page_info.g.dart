// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_page_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemoryPage _$MemoryPageFromJson(Map<String, dynamic> json) => MemoryPage(
      lastName: json['lastName'] as String,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      dateOfDeath: json['dateOfDeath'] as String,
      epitaphy: json['epitaphy'] as String,
      biography: json['biography'] as String,
      photoUrl: json['photoUrl'] as String?,
      photoUrls:
          (json['photoUrls'] as List<dynamic>).map((e) => e as String).toList(),
      videoUrls:
          (json['videoUrls'] as List<dynamic>).map((e) => e as String).toList(),
      isPrivate: json['isPrivate'] as bool,
      password: json['password'] as String,
      ownerId: json['ownerId'] as String,
    );

Map<String, dynamic> _$MemoryPageToJson(MemoryPage instance) =>
    <String, dynamic>{
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'dateOfBirth': instance.dateOfBirth,
      'dateOfDeath': instance.dateOfDeath,
      'epitaphy': instance.epitaphy,
      'biography': instance.biography,
      'photoUrl': instance.photoUrl,
      'photoUrls': instance.photoUrls,
      'videoUrls': instance.videoUrls,
      'isPrivate': instance.isPrivate,
      'password': instance.password,
      'ownerId': instance.ownerId,
    };
