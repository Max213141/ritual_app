class MemoryPage {
  final String lastName;
  final String firstName;
  final String middleName;
  final DateTime dateOfBirth;
  final DateTime dateOfDeath;
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
}
