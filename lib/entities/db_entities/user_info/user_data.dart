class DBUserData {
  final String email;
  final String password;

  const DBUserData({
    required this.email,
    required this.password,
  });

  factory DBUserData.fromFirestore(
    Map<String, dynamic> data,
    // SnapshotOptions? options,
  ) {
    // final data = snapshot.data();
    return DBUserData(
      email: data['email'] as String,
      password: data['password'] as String,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory DBUserData.fromJson(Map<String, dynamic> json) {
    return DBUserData(
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }
}
