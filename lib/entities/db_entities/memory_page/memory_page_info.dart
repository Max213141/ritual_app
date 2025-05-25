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
  final List<String> photoUrls;
  final List<String> videoUrls;
  final bool isPrivate;
  final String password;

  final String ownerId;

  MemoryPage({
    required this.lastName,
    required this.firstName,
    required this.middleName,
    required this.dateOfBirth,
    required this.dateOfDeath,
    required this.epitaphy,
    required this.biography,
    required this.photoUrl,
    required this.photoUrls,
    required this.videoUrls,
    required this.isPrivate,
    required this.password,
    required this.ownerId,
  });

  factory MemoryPage.fromJson(Map<String, dynamic> json) =>
      _$MemoryPageFromJson(json);

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
    List<String>? photoUrls,
    List<String>? videoUrls,
    bool? isPrivate,
    String? password,
    String? ownerId,
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
      photoUrls: photoUrls ?? this.photoUrls,
      videoUrls: videoUrls ?? this.videoUrls,
      isPrivate: isPrivate ?? this.isPrivate,
      password: password ?? this.password,
      ownerId: ownerId ?? this.ownerId,
    );
  }
}
