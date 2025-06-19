// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_desk_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemoryDeskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesks,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
    required TResult Function(String memoryDeskId) loadMemoryDesk,
    required TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)
        updateMemoryDesk,
    required TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)
        deleteMemoryDesk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesks,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult? Function(String memoryDeskId)? loadMemoryDesk,
    TResult? Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult? Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesks,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult Function(String memoryDeskId)? loadMemoryDesk,
    TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesks,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
    required TResult Function(LoadMemoryDesk value) loadMemoryDesk,
    required TResult Function(UpdateMemoryDesk value) updateMemoryDesk,
    required TResult Function(DeleteMemoryDesk value) deleteMemoryDesk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesks,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult? Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult? Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult? Function(DeleteMemoryDesk value)? deleteMemoryDesk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesks,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult Function(DeleteMemoryDesk value)? deleteMemoryDesk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryDeskEventCopyWith<$Res> {
  factory $MemoryDeskEventCopyWith(
          MemoryDeskEvent value, $Res Function(MemoryDeskEvent) then) =
      _$MemoryDeskEventCopyWithImpl<$Res, MemoryDeskEvent>;
}

/// @nodoc
class _$MemoryDeskEventCopyWithImpl<$Res, $Val extends MemoryDeskEvent>
    implements $MemoryDeskEventCopyWith<$Res> {
  _$MemoryDeskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UploadMemoryDeskImplCopyWith<$Res> {
  factory _$$UploadMemoryDeskImplCopyWith(_$UploadMemoryDeskImpl value,
          $Res Function(_$UploadMemoryDeskImpl) then) =
      __$$UploadMemoryDeskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemoryDesk memoryPage, EditableMedia mediaData});
}

/// @nodoc
class __$$UploadMemoryDeskImplCopyWithImpl<$Res>
    extends _$MemoryDeskEventCopyWithImpl<$Res, _$UploadMemoryDeskImpl>
    implements _$$UploadMemoryDeskImplCopyWith<$Res> {
  __$$UploadMemoryDeskImplCopyWithImpl(_$UploadMemoryDeskImpl _value,
      $Res Function(_$UploadMemoryDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryPage = null,
    Object? mediaData = null,
  }) {
    return _then(_$UploadMemoryDeskImpl(
      memoryPage: null == memoryPage
          ? _value.memoryPage
          : memoryPage // ignore: cast_nullable_to_non_nullable
              as MemoryDesk,
      mediaData: null == mediaData
          ? _value.mediaData
          : mediaData // ignore: cast_nullable_to_non_nullable
              as EditableMedia,
    ));
  }
}

/// @nodoc

class _$UploadMemoryDeskImpl implements UploadMemoryDesk {
  const _$UploadMemoryDeskImpl(
      {required this.memoryPage, required this.mediaData});

  @override
  final MemoryDesk memoryPage;
  @override
  final EditableMedia mediaData;

  @override
  String toString() {
    return 'MemoryDeskEvent.uploadMemoryDesk(memoryPage: $memoryPage, mediaData: $mediaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadMemoryDeskImpl &&
            (identical(other.memoryPage, memoryPage) ||
                other.memoryPage == memoryPage) &&
            (identical(other.mediaData, mediaData) ||
                other.mediaData == mediaData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memoryPage, mediaData);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadMemoryDeskImplCopyWith<_$UploadMemoryDeskImpl> get copyWith =>
      __$$UploadMemoryDeskImplCopyWithImpl<_$UploadMemoryDeskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesks,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
    required TResult Function(String memoryDeskId) loadMemoryDesk,
    required TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)
        updateMemoryDesk,
    required TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)
        deleteMemoryDesk,
  }) {
    return uploadMemoryDesk(memoryPage, mediaData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesks,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult? Function(String memoryDeskId)? loadMemoryDesk,
    TResult? Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult? Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
  }) {
    return uploadMemoryDesk?.call(memoryPage, mediaData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesks,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult Function(String memoryDeskId)? loadMemoryDesk,
    TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (uploadMemoryDesk != null) {
      return uploadMemoryDesk(memoryPage, mediaData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesks,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
    required TResult Function(LoadMemoryDesk value) loadMemoryDesk,
    required TResult Function(UpdateMemoryDesk value) updateMemoryDesk,
    required TResult Function(DeleteMemoryDesk value) deleteMemoryDesk,
  }) {
    return uploadMemoryDesk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesks,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult? Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult? Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult? Function(DeleteMemoryDesk value)? deleteMemoryDesk,
  }) {
    return uploadMemoryDesk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesks,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult Function(DeleteMemoryDesk value)? deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (uploadMemoryDesk != null) {
      return uploadMemoryDesk(this);
    }
    return orElse();
  }
}

abstract class UploadMemoryDesk implements MemoryDeskEvent {
  const factory UploadMemoryDesk(
      {required final MemoryDesk memoryPage,
      required final EditableMedia mediaData}) = _$UploadMemoryDeskImpl;

  MemoryDesk get memoryPage;
  EditableMedia get mediaData;

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadMemoryDeskImplCopyWith<_$UploadMemoryDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMemoryDesksImplCopyWith<$Res> {
  factory _$$GetMemoryDesksImplCopyWith(_$GetMemoryDesksImpl value,
          $Res Function(_$GetMemoryDesksImpl) then) =
      __$$GetMemoryDesksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMemoryDesksImplCopyWithImpl<$Res>
    extends _$MemoryDeskEventCopyWithImpl<$Res, _$GetMemoryDesksImpl>
    implements _$$GetMemoryDesksImplCopyWith<$Res> {
  __$$GetMemoryDesksImplCopyWithImpl(
      _$GetMemoryDesksImpl _value, $Res Function(_$GetMemoryDesksImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMemoryDesksImpl implements GetMemoryDesks {
  const _$GetMemoryDesksImpl();

  @override
  String toString() {
    return 'MemoryDeskEvent.getMemoryDesks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMemoryDesksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesks,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
    required TResult Function(String memoryDeskId) loadMemoryDesk,
    required TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)
        updateMemoryDesk,
    required TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)
        deleteMemoryDesk,
  }) {
    return getMemoryDesks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesks,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult? Function(String memoryDeskId)? loadMemoryDesk,
    TResult? Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult? Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
  }) {
    return getMemoryDesks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesks,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult Function(String memoryDeskId)? loadMemoryDesk,
    TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (getMemoryDesks != null) {
      return getMemoryDesks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesks,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
    required TResult Function(LoadMemoryDesk value) loadMemoryDesk,
    required TResult Function(UpdateMemoryDesk value) updateMemoryDesk,
    required TResult Function(DeleteMemoryDesk value) deleteMemoryDesk,
  }) {
    return getMemoryDesks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesks,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult? Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult? Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult? Function(DeleteMemoryDesk value)? deleteMemoryDesk,
  }) {
    return getMemoryDesks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesks,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult Function(DeleteMemoryDesk value)? deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (getMemoryDesks != null) {
      return getMemoryDesks(this);
    }
    return orElse();
  }
}

abstract class GetMemoryDesks implements MemoryDeskEvent {
  const factory GetMemoryDesks() = _$GetMemoryDesksImpl;
}

/// @nodoc
abstract class _$$AddMemoryDeskToUserImplCopyWith<$Res> {
  factory _$$AddMemoryDeskToUserImplCopyWith(_$AddMemoryDeskToUserImpl value,
          $Res Function(_$AddMemoryDeskToUserImpl) then) =
      __$$AddMemoryDeskToUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String memoryDeskId});
}

/// @nodoc
class __$$AddMemoryDeskToUserImplCopyWithImpl<$Res>
    extends _$MemoryDeskEventCopyWithImpl<$Res, _$AddMemoryDeskToUserImpl>
    implements _$$AddMemoryDeskToUserImplCopyWith<$Res> {
  __$$AddMemoryDeskToUserImplCopyWithImpl(_$AddMemoryDeskToUserImpl _value,
      $Res Function(_$AddMemoryDeskToUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? memoryDeskId = null,
  }) {
    return _then(_$AddMemoryDeskToUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      memoryDeskId: null == memoryDeskId
          ? _value.memoryDeskId
          : memoryDeskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddMemoryDeskToUserImpl implements AddMemoryDeskToUser {
  const _$AddMemoryDeskToUserImpl(
      {required this.userId, required this.memoryDeskId});

  @override
  final String userId;
  @override
  final String memoryDeskId;

  @override
  String toString() {
    return 'MemoryDeskEvent.addMemoryDeskToUser(userId: $userId, memoryDeskId: $memoryDeskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMemoryDeskToUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.memoryDeskId, memoryDeskId) ||
                other.memoryDeskId == memoryDeskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, memoryDeskId);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMemoryDeskToUserImplCopyWith<_$AddMemoryDeskToUserImpl> get copyWith =>
      __$$AddMemoryDeskToUserImplCopyWithImpl<_$AddMemoryDeskToUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesks,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
    required TResult Function(String memoryDeskId) loadMemoryDesk,
    required TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)
        updateMemoryDesk,
    required TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)
        deleteMemoryDesk,
  }) {
    return addMemoryDeskToUser(userId, memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesks,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult? Function(String memoryDeskId)? loadMemoryDesk,
    TResult? Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult? Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
  }) {
    return addMemoryDeskToUser?.call(userId, memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesks,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult Function(String memoryDeskId)? loadMemoryDesk,
    TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (addMemoryDeskToUser != null) {
      return addMemoryDeskToUser(userId, memoryDeskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesks,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
    required TResult Function(LoadMemoryDesk value) loadMemoryDesk,
    required TResult Function(UpdateMemoryDesk value) updateMemoryDesk,
    required TResult Function(DeleteMemoryDesk value) deleteMemoryDesk,
  }) {
    return addMemoryDeskToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesks,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult? Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult? Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult? Function(DeleteMemoryDesk value)? deleteMemoryDesk,
  }) {
    return addMemoryDeskToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesks,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult Function(DeleteMemoryDesk value)? deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (addMemoryDeskToUser != null) {
      return addMemoryDeskToUser(this);
    }
    return orElse();
  }
}

abstract class AddMemoryDeskToUser implements MemoryDeskEvent {
  const factory AddMemoryDeskToUser(
      {required final String userId,
      required final String memoryDeskId}) = _$AddMemoryDeskToUserImpl;

  String get userId;
  String get memoryDeskId;

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMemoryDeskToUserImplCopyWith<_$AddMemoryDeskToUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMemoryDeskImplCopyWith<$Res> {
  factory _$$LoadMemoryDeskImplCopyWith(_$LoadMemoryDeskImpl value,
          $Res Function(_$LoadMemoryDeskImpl) then) =
      __$$LoadMemoryDeskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String memoryDeskId});
}

/// @nodoc
class __$$LoadMemoryDeskImplCopyWithImpl<$Res>
    extends _$MemoryDeskEventCopyWithImpl<$Res, _$LoadMemoryDeskImpl>
    implements _$$LoadMemoryDeskImplCopyWith<$Res> {
  __$$LoadMemoryDeskImplCopyWithImpl(
      _$LoadMemoryDeskImpl _value, $Res Function(_$LoadMemoryDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryDeskId = null,
  }) {
    return _then(_$LoadMemoryDeskImpl(
      memoryDeskId: null == memoryDeskId
          ? _value.memoryDeskId
          : memoryDeskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMemoryDeskImpl implements LoadMemoryDesk {
  const _$LoadMemoryDeskImpl({required this.memoryDeskId});

  @override
  final String memoryDeskId;

  @override
  String toString() {
    return 'MemoryDeskEvent.loadMemoryDesk(memoryDeskId: $memoryDeskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMemoryDeskImpl &&
            (identical(other.memoryDeskId, memoryDeskId) ||
                other.memoryDeskId == memoryDeskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memoryDeskId);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMemoryDeskImplCopyWith<_$LoadMemoryDeskImpl> get copyWith =>
      __$$LoadMemoryDeskImplCopyWithImpl<_$LoadMemoryDeskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesks,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
    required TResult Function(String memoryDeskId) loadMemoryDesk,
    required TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)
        updateMemoryDesk,
    required TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)
        deleteMemoryDesk,
  }) {
    return loadMemoryDesk(memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesks,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult? Function(String memoryDeskId)? loadMemoryDesk,
    TResult? Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult? Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
  }) {
    return loadMemoryDesk?.call(memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesks,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult Function(String memoryDeskId)? loadMemoryDesk,
    TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (loadMemoryDesk != null) {
      return loadMemoryDesk(memoryDeskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesks,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
    required TResult Function(LoadMemoryDesk value) loadMemoryDesk,
    required TResult Function(UpdateMemoryDesk value) updateMemoryDesk,
    required TResult Function(DeleteMemoryDesk value) deleteMemoryDesk,
  }) {
    return loadMemoryDesk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesks,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult? Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult? Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult? Function(DeleteMemoryDesk value)? deleteMemoryDesk,
  }) {
    return loadMemoryDesk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesks,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult Function(DeleteMemoryDesk value)? deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (loadMemoryDesk != null) {
      return loadMemoryDesk(this);
    }
    return orElse();
  }
}

abstract class LoadMemoryDesk implements MemoryDeskEvent {
  const factory LoadMemoryDesk({required final String memoryDeskId}) =
      _$LoadMemoryDeskImpl;

  String get memoryDeskId;

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMemoryDeskImplCopyWith<_$LoadMemoryDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMemoryDeskImplCopyWith<$Res> {
  factory _$$UpdateMemoryDeskImplCopyWith(_$UpdateMemoryDeskImpl value,
          $Res Function(_$UpdateMemoryDeskImpl) then) =
      __$$UpdateMemoryDeskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deskId, MemoryDesk memoryPage, EditableMedia newMedia});
}

/// @nodoc
class __$$UpdateMemoryDeskImplCopyWithImpl<$Res>
    extends _$MemoryDeskEventCopyWithImpl<$Res, _$UpdateMemoryDeskImpl>
    implements _$$UpdateMemoryDeskImplCopyWith<$Res> {
  __$$UpdateMemoryDeskImplCopyWithImpl(_$UpdateMemoryDeskImpl _value,
      $Res Function(_$UpdateMemoryDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskId = null,
    Object? memoryPage = null,
    Object? newMedia = null,
  }) {
    return _then(_$UpdateMemoryDeskImpl(
      deskId: null == deskId
          ? _value.deskId
          : deskId // ignore: cast_nullable_to_non_nullable
              as String,
      memoryPage: null == memoryPage
          ? _value.memoryPage
          : memoryPage // ignore: cast_nullable_to_non_nullable
              as MemoryDesk,
      newMedia: null == newMedia
          ? _value.newMedia
          : newMedia // ignore: cast_nullable_to_non_nullable
              as EditableMedia,
    ));
  }
}

/// @nodoc

class _$UpdateMemoryDeskImpl implements UpdateMemoryDesk {
  const _$UpdateMemoryDeskImpl(
      {required this.deskId, required this.memoryPage, required this.newMedia});

  @override
  final String deskId;
  @override
  final MemoryDesk memoryPage;
// the form’s “final” MemoryPage (with new photoUrls/videoUrls)
  @override
  final EditableMedia newMedia;

  @override
  String toString() {
    return 'MemoryDeskEvent.updateMemoryDesk(deskId: $deskId, memoryPage: $memoryPage, newMedia: $newMedia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMemoryDeskImpl &&
            (identical(other.deskId, deskId) || other.deskId == deskId) &&
            (identical(other.memoryPage, memoryPage) ||
                other.memoryPage == memoryPage) &&
            (identical(other.newMedia, newMedia) ||
                other.newMedia == newMedia));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deskId, memoryPage, newMedia);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMemoryDeskImplCopyWith<_$UpdateMemoryDeskImpl> get copyWith =>
      __$$UpdateMemoryDeskImplCopyWithImpl<_$UpdateMemoryDeskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesks,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
    required TResult Function(String memoryDeskId) loadMemoryDesk,
    required TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)
        updateMemoryDesk,
    required TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)
        deleteMemoryDesk,
  }) {
    return updateMemoryDesk(deskId, memoryPage, newMedia);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesks,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult? Function(String memoryDeskId)? loadMemoryDesk,
    TResult? Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult? Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
  }) {
    return updateMemoryDesk?.call(deskId, memoryPage, newMedia);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesks,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult Function(String memoryDeskId)? loadMemoryDesk,
    TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (updateMemoryDesk != null) {
      return updateMemoryDesk(deskId, memoryPage, newMedia);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesks,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
    required TResult Function(LoadMemoryDesk value) loadMemoryDesk,
    required TResult Function(UpdateMemoryDesk value) updateMemoryDesk,
    required TResult Function(DeleteMemoryDesk value) deleteMemoryDesk,
  }) {
    return updateMemoryDesk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesks,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult? Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult? Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult? Function(DeleteMemoryDesk value)? deleteMemoryDesk,
  }) {
    return updateMemoryDesk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesks,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult Function(DeleteMemoryDesk value)? deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (updateMemoryDesk != null) {
      return updateMemoryDesk(this);
    }
    return orElse();
  }
}

abstract class UpdateMemoryDesk implements MemoryDeskEvent {
  const factory UpdateMemoryDesk(
      {required final String deskId,
      required final MemoryDesk memoryPage,
      required final EditableMedia newMedia}) = _$UpdateMemoryDeskImpl;

  String get deskId;
  MemoryDesk
      get memoryPage; // the form’s “final” MemoryPage (with new photoUrls/videoUrls)
  EditableMedia get newMedia;

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMemoryDeskImplCopyWith<_$UpdateMemoryDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMemoryDeskImplCopyWith<$Res> {
  factory _$$DeleteMemoryDeskImplCopyWith(_$DeleteMemoryDeskImpl value,
          $Res Function(_$DeleteMemoryDeskImpl) then) =
      __$$DeleteMemoryDeskImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String deskId,
      List<String> photoUrls,
      List<String> videoUrls,
      String? avatarUrl});
}

/// @nodoc
class __$$DeleteMemoryDeskImplCopyWithImpl<$Res>
    extends _$MemoryDeskEventCopyWithImpl<$Res, _$DeleteMemoryDeskImpl>
    implements _$$DeleteMemoryDeskImplCopyWith<$Res> {
  __$$DeleteMemoryDeskImplCopyWithImpl(_$DeleteMemoryDeskImpl _value,
      $Res Function(_$DeleteMemoryDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskId = null,
    Object? photoUrls = null,
    Object? videoUrls = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$DeleteMemoryDeskImpl(
      deskId: null == deskId
          ? _value.deskId
          : deskId // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrls: null == videoUrls
          ? _value._videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteMemoryDeskImpl implements DeleteMemoryDesk {
  const _$DeleteMemoryDeskImpl(
      {required this.deskId,
      required final List<String> photoUrls,
      required final List<String> videoUrls,
      this.avatarUrl})
      : _photoUrls = photoUrls,
        _videoUrls = videoUrls;

  @override
  final String deskId;
  final List<String> _photoUrls;
  @override
  List<String> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  final List<String> _videoUrls;
  @override
  List<String> get videoUrls {
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoUrls);
  }

  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'MemoryDeskEvent.deleteMemoryDesk(deskId: $deskId, photoUrls: $photoUrls, videoUrls: $videoUrls, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMemoryDeskImpl &&
            (identical(other.deskId, deskId) || other.deskId == deskId) &&
            const DeepCollectionEquality()
                .equals(other._photoUrls, _photoUrls) &&
            const DeepCollectionEquality()
                .equals(other._videoUrls, _videoUrls) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      deskId,
      const DeepCollectionEquality().hash(_photoUrls),
      const DeepCollectionEquality().hash(_videoUrls),
      avatarUrl);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMemoryDeskImplCopyWith<_$DeleteMemoryDeskImpl> get copyWith =>
      __$$DeleteMemoryDeskImplCopyWithImpl<_$DeleteMemoryDeskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesks,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
    required TResult Function(String memoryDeskId) loadMemoryDesk,
    required TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)
        updateMemoryDesk,
    required TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)
        deleteMemoryDesk,
  }) {
    return deleteMemoryDesk(deskId, photoUrls, videoUrls, avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesks,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult? Function(String memoryDeskId)? loadMemoryDesk,
    TResult? Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult? Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
  }) {
    return deleteMemoryDesk?.call(deskId, photoUrls, videoUrls, avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, EditableMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesks,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    TResult Function(String memoryDeskId)? loadMemoryDesk,
    TResult Function(
            String deskId, MemoryDesk memoryPage, EditableMedia newMedia)?
        updateMemoryDesk,
    TResult Function(String deskId, List<String> photoUrls,
            List<String> videoUrls, String? avatarUrl)?
        deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (deleteMemoryDesk != null) {
      return deleteMemoryDesk(deskId, photoUrls, videoUrls, avatarUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesks,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
    required TResult Function(LoadMemoryDesk value) loadMemoryDesk,
    required TResult Function(UpdateMemoryDesk value) updateMemoryDesk,
    required TResult Function(DeleteMemoryDesk value) deleteMemoryDesk,
  }) {
    return deleteMemoryDesk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesks,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult? Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult? Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult? Function(DeleteMemoryDesk value)? deleteMemoryDesk,
  }) {
    return deleteMemoryDesk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesks,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    TResult Function(LoadMemoryDesk value)? loadMemoryDesk,
    TResult Function(UpdateMemoryDesk value)? updateMemoryDesk,
    TResult Function(DeleteMemoryDesk value)? deleteMemoryDesk,
    required TResult orElse(),
  }) {
    if (deleteMemoryDesk != null) {
      return deleteMemoryDesk(this);
    }
    return orElse();
  }
}

abstract class DeleteMemoryDesk implements MemoryDeskEvent {
  const factory DeleteMemoryDesk(
      {required final String deskId,
      required final List<String> photoUrls,
      required final List<String> videoUrls,
      final String? avatarUrl}) = _$DeleteMemoryDeskImpl;

  String get deskId;
  List<String> get photoUrls;
  List<String> get videoUrls;
  String? get avatarUrl;

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMemoryDeskImplCopyWith<_$DeleteMemoryDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemoryDeskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() deletionSuccess,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)
        memoryDesksLoaded,
    required TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)
        memoryDeskLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? deletionSuccess,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult? Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? deletionSuccess,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(DeletionSuccess value) deletionSuccess,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryDesksLoaded value) memoryDesksLoaded,
    required TResult Function(MemoryDeskLoaded value) memoryDeskLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(DeletionSuccess value)? deletionSuccess,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult? Function(MemoryDeskLoaded value)? memoryDeskLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult Function(MemoryDeskLoaded value)? memoryDeskLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryDeskStateCopyWith<$Res> {
  factory $MemoryDeskStateCopyWith(
          MemoryDeskState value, $Res Function(MemoryDeskState) then) =
      _$MemoryDeskStateCopyWithImpl<$Res, MemoryDeskState>;
}

/// @nodoc
class _$MemoryDeskStateCopyWithImpl<$Res, $Val extends MemoryDeskState>
    implements $MemoryDeskStateCopyWith<$Res> {
  _$MemoryDeskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MemoryDeskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() deletionSuccess,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)
        memoryDesksLoaded,
    required TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)
        memoryDeskLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? deletionSuccess,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult? Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? deletionSuccess,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(DeletionSuccess value) deletionSuccess,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryDesksLoaded value) memoryDesksLoaded,
    required TResult Function(MemoryDeskLoaded value) memoryDeskLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(DeletionSuccess value)? deletionSuccess,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult? Function(MemoryDeskLoaded value)? memoryDeskLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult Function(MemoryDeskLoaded value)? memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MemoryDeskState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MemoryDeskState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() deletionSuccess,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)
        memoryDesksLoaded,
    required TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)
        memoryDeskLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? deletionSuccess,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult? Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? deletionSuccess,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(DeletionSuccess value) deletionSuccess,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryDesksLoaded value) memoryDesksLoaded,
    required TResult Function(MemoryDeskLoaded value) memoryDeskLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(DeletionSuccess value)? deletionSuccess,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult? Function(MemoryDeskLoaded value)? memoryDeskLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult Function(MemoryDeskLoaded value)? memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MemoryDeskState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'MemoryDeskState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() deletionSuccess,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)
        memoryDesksLoaded,
    required TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)
        memoryDeskLoaded,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? deletionSuccess,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult? Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? deletionSuccess,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(DeletionSuccess value) deletionSuccess,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryDesksLoaded value) memoryDesksLoaded,
    required TResult Function(MemoryDeskLoaded value) memoryDeskLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(DeletionSuccess value)? deletionSuccess,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult? Function(MemoryDeskLoaded value)? memoryDeskLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult Function(MemoryDeskLoaded value)? memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements MemoryDeskState {
  const factory Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$DeletionSuccessImplCopyWith<$Res> {
  factory _$$DeletionSuccessImplCopyWith(_$DeletionSuccessImpl value,
          $Res Function(_$DeletionSuccessImpl) then) =
      __$$DeletionSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletionSuccessImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$DeletionSuccessImpl>
    implements _$$DeletionSuccessImplCopyWith<$Res> {
  __$$DeletionSuccessImplCopyWithImpl(
      _$DeletionSuccessImpl _value, $Res Function(_$DeletionSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeletionSuccessImpl implements DeletionSuccess {
  const _$DeletionSuccessImpl();

  @override
  String toString() {
    return 'MemoryDeskState.deletionSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletionSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() deletionSuccess,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)
        memoryDesksLoaded,
    required TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)
        memoryDeskLoaded,
  }) {
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? deletionSuccess,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult? Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
  }) {
    return deletionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? deletionSuccess,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(DeletionSuccess value) deletionSuccess,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryDesksLoaded value) memoryDesksLoaded,
    required TResult Function(MemoryDeskLoaded value) memoryDeskLoaded,
  }) {
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(DeletionSuccess value)? deletionSuccess,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult? Function(MemoryDeskLoaded value)? memoryDeskLoaded,
  }) {
    return deletionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult Function(MemoryDeskLoaded value)? memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class DeletionSuccess implements MemoryDeskState {
  const factory DeletionSuccess() = _$DeletionSuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MemoryDeskState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() deletionSuccess,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)
        memoryDesksLoaded,
    required TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)
        memoryDeskLoaded,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? deletionSuccess,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult? Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? deletionSuccess,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(DeletionSuccess value) deletionSuccess,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryDesksLoaded value) memoryDesksLoaded,
    required TResult Function(MemoryDeskLoaded value) memoryDeskLoaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(DeletionSuccess value)? deletionSuccess,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult? Function(MemoryDeskLoaded value)? memoryDeskLoaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult Function(MemoryDeskLoaded value)? memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements MemoryDeskState {
  const factory Failure({required final String error}) = _$FailureImpl;

  String get error;

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemoryDesksLoadedImplCopyWith<$Res> {
  factory _$$MemoryDesksLoadedImplCopyWith(_$MemoryDesksLoadedImpl value,
          $Res Function(_$MemoryDesksLoadedImpl) then) =
      __$$MemoryDesksLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MemoryDesk> memoryDesks, List<String> memoryDeskIds});
}

/// @nodoc
class __$$MemoryDesksLoadedImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$MemoryDesksLoadedImpl>
    implements _$$MemoryDesksLoadedImplCopyWith<$Res> {
  __$$MemoryDesksLoadedImplCopyWithImpl(_$MemoryDesksLoadedImpl _value,
      $Res Function(_$MemoryDesksLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryDesks = null,
    Object? memoryDeskIds = null,
  }) {
    return _then(_$MemoryDesksLoadedImpl(
      memoryDesks: null == memoryDesks
          ? _value._memoryDesks
          : memoryDesks // ignore: cast_nullable_to_non_nullable
              as List<MemoryDesk>,
      memoryDeskIds: null == memoryDeskIds
          ? _value._memoryDeskIds
          : memoryDeskIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MemoryDesksLoadedImpl implements MemoryDesksLoaded {
  const _$MemoryDesksLoadedImpl(
      {required final List<MemoryDesk> memoryDesks,
      required final List<String> memoryDeskIds})
      : _memoryDesks = memoryDesks,
        _memoryDeskIds = memoryDeskIds;

  final List<MemoryDesk> _memoryDesks;
  @override
  List<MemoryDesk> get memoryDesks {
    if (_memoryDesks is EqualUnmodifiableListView) return _memoryDesks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memoryDesks);
  }

  final List<String> _memoryDeskIds;
  @override
  List<String> get memoryDeskIds {
    if (_memoryDeskIds is EqualUnmodifiableListView) return _memoryDeskIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memoryDeskIds);
  }

  @override
  String toString() {
    return 'MemoryDeskState.memoryDesksLoaded(memoryDesks: $memoryDesks, memoryDeskIds: $memoryDeskIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryDesksLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._memoryDesks, _memoryDesks) &&
            const DeepCollectionEquality()
                .equals(other._memoryDeskIds, _memoryDeskIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_memoryDesks),
      const DeepCollectionEquality().hash(_memoryDeskIds));

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryDesksLoadedImplCopyWith<_$MemoryDesksLoadedImpl> get copyWith =>
      __$$MemoryDesksLoadedImplCopyWithImpl<_$MemoryDesksLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() deletionSuccess,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)
        memoryDesksLoaded,
    required TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)
        memoryDeskLoaded,
  }) {
    return memoryDesksLoaded(memoryDesks, memoryDeskIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? deletionSuccess,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult? Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
  }) {
    return memoryDesksLoaded?.call(memoryDesks, memoryDeskIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? deletionSuccess,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (memoryDesksLoaded != null) {
      return memoryDesksLoaded(memoryDesks, memoryDeskIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(DeletionSuccess value) deletionSuccess,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryDesksLoaded value) memoryDesksLoaded,
    required TResult Function(MemoryDeskLoaded value) memoryDeskLoaded,
  }) {
    return memoryDesksLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(DeletionSuccess value)? deletionSuccess,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult? Function(MemoryDeskLoaded value)? memoryDeskLoaded,
  }) {
    return memoryDesksLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult Function(MemoryDeskLoaded value)? memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (memoryDesksLoaded != null) {
      return memoryDesksLoaded(this);
    }
    return orElse();
  }
}

abstract class MemoryDesksLoaded implements MemoryDeskState {
  const factory MemoryDesksLoaded(
      {required final List<MemoryDesk> memoryDesks,
      required final List<String> memoryDeskIds}) = _$MemoryDesksLoadedImpl;

  List<MemoryDesk> get memoryDesks;
  List<String> get memoryDeskIds;

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryDesksLoadedImplCopyWith<_$MemoryDesksLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemoryDeskLoadedImplCopyWith<$Res> {
  factory _$$MemoryDeskLoadedImplCopyWith(_$MemoryDeskLoadedImpl value,
          $Res Function(_$MemoryDeskLoadedImpl) then) =
      __$$MemoryDeskLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemoryDesk memoryDesk, String memoryDeskIds});
}

/// @nodoc
class __$$MemoryDeskLoadedImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$MemoryDeskLoadedImpl>
    implements _$$MemoryDeskLoadedImplCopyWith<$Res> {
  __$$MemoryDeskLoadedImplCopyWithImpl(_$MemoryDeskLoadedImpl _value,
      $Res Function(_$MemoryDeskLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryDesk = null,
    Object? memoryDeskIds = null,
  }) {
    return _then(_$MemoryDeskLoadedImpl(
      memoryDesk: null == memoryDesk
          ? _value.memoryDesk
          : memoryDesk // ignore: cast_nullable_to_non_nullable
              as MemoryDesk,
      memoryDeskIds: null == memoryDeskIds
          ? _value.memoryDeskIds
          : memoryDeskIds // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MemoryDeskLoadedImpl implements MemoryDeskLoaded {
  const _$MemoryDeskLoadedImpl(
      {required this.memoryDesk, required this.memoryDeskIds});

  @override
  final MemoryDesk memoryDesk;
  @override
  final String memoryDeskIds;

  @override
  String toString() {
    return 'MemoryDeskState.memoryDeskLoaded(memoryDesk: $memoryDesk, memoryDeskIds: $memoryDeskIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryDeskLoadedImpl &&
            (identical(other.memoryDesk, memoryDesk) ||
                other.memoryDesk == memoryDesk) &&
            (identical(other.memoryDeskIds, memoryDeskIds) ||
                other.memoryDeskIds == memoryDeskIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memoryDesk, memoryDeskIds);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryDeskLoadedImplCopyWith<_$MemoryDeskLoadedImpl> get copyWith =>
      __$$MemoryDeskLoadedImplCopyWithImpl<_$MemoryDeskLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() deletionSuccess,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)
        memoryDesksLoaded,
    required TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)
        memoryDeskLoaded,
  }) {
    return memoryDeskLoaded(memoryDesk, memoryDeskIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? deletionSuccess,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult? Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
  }) {
    return memoryDeskLoaded?.call(memoryDesk, memoryDeskIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? deletionSuccess,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryDesks, List<String> memoryDeskIds)?
        memoryDesksLoaded,
    TResult Function(MemoryDesk memoryDesk, String memoryDeskIds)?
        memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (memoryDeskLoaded != null) {
      return memoryDeskLoaded(memoryDesk, memoryDeskIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(DeletionSuccess value) deletionSuccess,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryDesksLoaded value) memoryDesksLoaded,
    required TResult Function(MemoryDeskLoaded value) memoryDeskLoaded,
  }) {
    return memoryDeskLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(DeletionSuccess value)? deletionSuccess,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult? Function(MemoryDeskLoaded value)? memoryDeskLoaded,
  }) {
    return memoryDeskLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryDesksLoaded value)? memoryDesksLoaded,
    TResult Function(MemoryDeskLoaded value)? memoryDeskLoaded,
    required TResult orElse(),
  }) {
    if (memoryDeskLoaded != null) {
      return memoryDeskLoaded(this);
    }
    return orElse();
  }
}

abstract class MemoryDeskLoaded implements MemoryDeskState {
  const factory MemoryDeskLoaded(
      {required final MemoryDesk memoryDesk,
      required final String memoryDeskIds}) = _$MemoryDeskLoadedImpl;

  MemoryDesk get memoryDesk;
  String get memoryDeskIds;

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryDeskLoadedImplCopyWith<_$MemoryDeskLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
