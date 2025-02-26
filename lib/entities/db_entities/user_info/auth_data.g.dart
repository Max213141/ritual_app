// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthData _$AuthDataFromJson(Map<String, dynamic> json) => AuthData(
      userId: json['userId'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      profilePicUrl: json['profilePicUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      authProvider: json['authProvider'] as String,
      googleId: json['googleId'] as String?,
      linkedAccounts: (json['linkedAccounts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      memoryDesks: (json['memoryDesks'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AuthDataToJson(AuthData instance) => <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'displayName': instance.displayName,
      'profilePicUrl': instance.profilePicUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'authProvider': instance.authProvider,
      'googleId': instance.googleId,
      'linkedAccounts': instance.linkedAccounts,
      'memoryDesks': instance.memoryDesks,
    };
