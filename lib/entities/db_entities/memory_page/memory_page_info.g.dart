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
      isPrivate: json['isPrivate'] as bool,
      password: json['password'] as String,
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
      'isPrivate': instance.isPrivate,
      'password': instance.password,
    };
