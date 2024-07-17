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
  String? password;

  UserData({
    this.uid,
    this.email,
    this.password,
  });

  UserData.initial();
}
