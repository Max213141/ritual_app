import 'package:json_annotation/json_annotation.dart';

part 'auth_data.g.dart';

@JsonSerializable(explicitToJson: true)
class AuthData {
  final String userId;
  final String email;
  final String displayName;
  final String profilePicUrl;
  final DateTime createdAt;
  final String authProvider;
  final String? googleId;
  final List<String> linkedAccounts;
  final List<String> memoryDesks;

  AuthData({
    required this.userId,
    required this.email,
    required this.displayName,
    required this.profilePicUrl,
    required this.createdAt,
    required this.authProvider,
    this.googleId,
    required this.linkedAccounts,
    required this.memoryDesks,
  });

  /// Factory constructor for JSON deserialization
  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);

  /// Method for JSON serialization
  Map<String, dynamic> toJson() => _$AuthDataToJson(this);
}
