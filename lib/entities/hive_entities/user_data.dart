import 'package:hive_flutter/hive_flutter.dart';
import 'package:ritual_app/entities/hive_index.dart';

part 'user_data.g.dart';

@HiveType(typeId: HiveIndex.userData)
class UserData extends HiveObject {
  @HiveField(0)
  String? uid;
  @HiveField(1)
  String? email;
  @HiveField(2)
  String? displayName;
  @HiveField(3)
  String? profilePicUrl;
  @HiveField(4)
  String? authProvider; // "google" or "email"
  @HiveField(5)
  List<String>? linkedAccounts;
  @HiveField(6)
  List<String>? memoryDesks;

  UserData({
    this.uid,
    this.email,
    this.displayName,
    this.profilePicUrl,
    this.authProvider,
    this.linkedAccounts,
    this.memoryDesks,
  });

  UserData.initial();
}
