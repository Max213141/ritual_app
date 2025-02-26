class DBUserData {
  final String email;
  final String password;

  const DBUserData({
    required this.email,
    required this.password,
  });

  factory DBUserData.fromJson(Map<String, dynamic> json) {
    return DBUserData(
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }
}
