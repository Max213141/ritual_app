import 'package:json_annotation/json_annotation.dart';

part 'memory_page_info.g.dart';

@JsonSerializable(explicitToJson: true)
class MemoryPage {
  final String lastName;
  final String firstName;
  final String middleName;
  final String dateOfBirth;
  final String dateOfDeath;
  final String epitaphy;
  final String biography;
  final String? photoUrl;
  final bool isPrivate;
  final String password;

  MemoryPage({
    required this.lastName,
    required this.firstName,
    required this.middleName,
    required this.dateOfBirth,
    required this.dateOfDeath,
    required this.epitaphy,
    required this.biography,
    required this.photoUrl,
    required this.isPrivate,
    required this.password,
  });

  /// Factory constructor for JSON deserialization
  factory MemoryPage.fromJson(Map<String, dynamic> json) =>
      _$MemoryPageFromJson(json);

  /// Method for JSON serialization
  Map<String, dynamic> toJson() => _$MemoryPageToJson(this);

  MemoryPage copyWith({
    String? lastName,
    String? firstName,
    String? middleName,
    String? dateOfBirth,
    String? dateOfDeath,
    String? epitaphy,
    String? biography,
    String? photoUrl,
    bool? isPrivate,
    String? password,
  }) {
    return MemoryPage(
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      dateOfDeath: dateOfDeath ?? this.dateOfDeath,
      epitaphy: epitaphy ?? this.epitaphy,
      biography: biography ?? this.biography,
      photoUrl: photoUrl ?? this.photoUrl,
      isPrivate: isPrivate ?? this.isPrivate,
      password: password ?? this.password,
    );
  }
}
