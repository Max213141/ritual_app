// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDataAdapter extends TypeAdapter<UserData> {
  @override
  final int typeId = 1;

  @override
  UserData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserData(
      uid: fields[0] as String?,
      email: fields[1] as String?,
      displayName: fields[2] as String?,
      profilePicUrl: fields[3] as String?,
      authProvider: fields[4] as String?,
      linkedAccounts: (fields[5] as List?)?.cast<String>(),
      memoryDesks: (fields[6] as List?)?.cast<String>(),
      subscriptionLevel: fields[7] as String?,
      photoLimit: fields[8] as int?,
      videoLimit: fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, UserData obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.displayName)
      ..writeByte(3)
      ..write(obj.profilePicUrl)
      ..writeByte(4)
      ..write(obj.authProvider)
      ..writeByte(5)
      ..write(obj.linkedAccounts)
      ..writeByte(6)
      ..write(obj.memoryDesks)
      ..writeByte(7)
      ..write(obj.subscriptionLevel)
      ..writeByte(8)
      ..write(obj.photoLimit)
      ..writeByte(9)
      ..write(obj.videoLimit);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
