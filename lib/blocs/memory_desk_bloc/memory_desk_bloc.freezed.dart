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
    required TResult Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)
        uploadMemoryPage,
    required TResult Function(String memoryDeskId) getMemoryPage,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)?
        uploadMemoryPage,
    TResult? Function(String memoryDeskId)? getMemoryPage,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)?
        uploadMemoryPage,
    TResult Function(String memoryDeskId)? getMemoryPage,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryPage value) uploadMemoryPage,
    required TResult Function(GetMemoryPage value) getMemoryPage,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryPage value)? uploadMemoryPage,
    TResult? Function(GetMemoryPage value)? getMemoryPage,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryPage value)? uploadMemoryPage,
    TResult Function(GetMemoryPage value)? getMemoryPage,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
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
abstract class _$$UploadMemoryPageImplCopyWith<$Res> {
  factory _$$UploadMemoryPageImplCopyWith(_$UploadMemoryPageImpl value,
          $Res Function(_$UploadMemoryPageImpl) then) =
      __$$UploadMemoryPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemoryPage memoryPage, MemoryPageMedia mediaData, String userId});
}

/// @nodoc
class __$$UploadMemoryPageImplCopyWithImpl<$Res>
    extends _$MemoryDeskEventCopyWithImpl<$Res, _$UploadMemoryPageImpl>
    implements _$$UploadMemoryPageImplCopyWith<$Res> {
  __$$UploadMemoryPageImplCopyWithImpl(_$UploadMemoryPageImpl _value,
      $Res Function(_$UploadMemoryPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryPage = null,
    Object? mediaData = null,
    Object? userId = null,
  }) {
    return _then(_$UploadMemoryPageImpl(
      memoryPage: null == memoryPage
          ? _value.memoryPage
          : memoryPage // ignore: cast_nullable_to_non_nullable
              as MemoryPage,
      mediaData: null == mediaData
          ? _value.mediaData
          : mediaData // ignore: cast_nullable_to_non_nullable
              as MemoryPageMedia,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadMemoryPageImpl implements UploadMemoryPage {
  const _$UploadMemoryPageImpl(
      {required this.memoryPage,
      required this.mediaData,
      required this.userId});

  @override
  final MemoryPage memoryPage;
  @override
  final MemoryPageMedia mediaData;
  @override
  final String userId;

  @override
  String toString() {
    return 'MemoryDeskEvent.uploadMemoryPage(memoryPage: $memoryPage, mediaData: $mediaData, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadMemoryPageImpl &&
            (identical(other.memoryPage, memoryPage) ||
                other.memoryPage == memoryPage) &&
            (identical(other.mediaData, mediaData) ||
                other.mediaData == mediaData) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memoryPage, mediaData, userId);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadMemoryPageImplCopyWith<_$UploadMemoryPageImpl> get copyWith =>
      __$$UploadMemoryPageImplCopyWithImpl<_$UploadMemoryPageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)
        uploadMemoryPage,
    required TResult Function(String memoryDeskId) getMemoryPage,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
  }) {
    return uploadMemoryPage(memoryPage, mediaData, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)?
        uploadMemoryPage,
    TResult? Function(String memoryDeskId)? getMemoryPage,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
  }) {
    return uploadMemoryPage?.call(memoryPage, mediaData, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)?
        uploadMemoryPage,
    TResult Function(String memoryDeskId)? getMemoryPage,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    required TResult orElse(),
  }) {
    if (uploadMemoryPage != null) {
      return uploadMemoryPage(memoryPage, mediaData, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryPage value) uploadMemoryPage,
    required TResult Function(GetMemoryPage value) getMemoryPage,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
  }) {
    return uploadMemoryPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryPage value)? uploadMemoryPage,
    TResult? Function(GetMemoryPage value)? getMemoryPage,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
  }) {
    return uploadMemoryPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryPage value)? uploadMemoryPage,
    TResult Function(GetMemoryPage value)? getMemoryPage,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    required TResult orElse(),
  }) {
    if (uploadMemoryPage != null) {
      return uploadMemoryPage(this);
    }
    return orElse();
  }
}

abstract class UploadMemoryPage implements MemoryDeskEvent {
  const factory UploadMemoryPage(
      {required final MemoryPage memoryPage,
      required final MemoryPageMedia mediaData,
      required final String userId}) = _$UploadMemoryPageImpl;

  MemoryPage get memoryPage;
  MemoryPageMedia get mediaData;
  String get userId;

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadMemoryPageImplCopyWith<_$UploadMemoryPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMemoryPageImplCopyWith<$Res> {
  factory _$$GetMemoryPageImplCopyWith(
          _$GetMemoryPageImpl value, $Res Function(_$GetMemoryPageImpl) then) =
      __$$GetMemoryPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String memoryDeskId});
}

/// @nodoc
class __$$GetMemoryPageImplCopyWithImpl<$Res>
    extends _$MemoryDeskEventCopyWithImpl<$Res, _$GetMemoryPageImpl>
    implements _$$GetMemoryPageImplCopyWith<$Res> {
  __$$GetMemoryPageImplCopyWithImpl(
      _$GetMemoryPageImpl _value, $Res Function(_$GetMemoryPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryDeskId = null,
  }) {
    return _then(_$GetMemoryPageImpl(
      memoryDeskId: null == memoryDeskId
          ? _value.memoryDeskId
          : memoryDeskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMemoryPageImpl implements GetMemoryPage {
  const _$GetMemoryPageImpl({required this.memoryDeskId});

  @override
  final String memoryDeskId;

  @override
  String toString() {
    return 'MemoryDeskEvent.getMemoryPage(memoryDeskId: $memoryDeskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMemoryPageImpl &&
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
  _$$GetMemoryPageImplCopyWith<_$GetMemoryPageImpl> get copyWith =>
      __$$GetMemoryPageImplCopyWithImpl<_$GetMemoryPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)
        uploadMemoryPage,
    required TResult Function(String memoryDeskId) getMemoryPage,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
  }) {
    return getMemoryPage(memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)?
        uploadMemoryPage,
    TResult? Function(String memoryDeskId)? getMemoryPage,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
  }) {
    return getMemoryPage?.call(memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)?
        uploadMemoryPage,
    TResult Function(String memoryDeskId)? getMemoryPage,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    required TResult orElse(),
  }) {
    if (getMemoryPage != null) {
      return getMemoryPage(memoryDeskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryPage value) uploadMemoryPage,
    required TResult Function(GetMemoryPage value) getMemoryPage,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
  }) {
    return getMemoryPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryPage value)? uploadMemoryPage,
    TResult? Function(GetMemoryPage value)? getMemoryPage,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
  }) {
    return getMemoryPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryPage value)? uploadMemoryPage,
    TResult Function(GetMemoryPage value)? getMemoryPage,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    required TResult orElse(),
  }) {
    if (getMemoryPage != null) {
      return getMemoryPage(this);
    }
    return orElse();
  }
}

abstract class GetMemoryPage implements MemoryDeskEvent {
  const factory GetMemoryPage({required final String memoryDeskId}) =
      _$GetMemoryPageImpl;

  String get memoryDeskId;

  /// Create a copy of MemoryDeskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMemoryPageImplCopyWith<_$GetMemoryPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)
        uploadMemoryPage,
    required TResult Function(String memoryDeskId) getMemoryPage,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
  }) {
    return addMemoryDeskToUser(userId, memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)?
        uploadMemoryPage,
    TResult? Function(String memoryDeskId)? getMemoryPage,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
  }) {
    return addMemoryDeskToUser?.call(userId, memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MemoryPage memoryPage, MemoryPageMedia mediaData, String userId)?
        uploadMemoryPage,
    TResult Function(String memoryDeskId)? getMemoryPage,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
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
    required TResult Function(UploadMemoryPage value) uploadMemoryPage,
    required TResult Function(GetMemoryPage value) getMemoryPage,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
  }) {
    return addMemoryDeskToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryPage value)? uploadMemoryPage,
    TResult? Function(GetMemoryPage value)? getMemoryPage,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
  }) {
    return addMemoryDeskToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryPage value)? uploadMemoryPage,
    TResult Function(GetMemoryPage value)? getMemoryPage,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
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
mixin _$MemoryDeskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(MemoryPage memoryPage) memoryPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(MemoryPage memoryPage)? memoryPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(MemoryPage memoryPage)? memoryPageLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPageLoaded value) memoryPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPageLoaded value)? memoryPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPageLoaded value)? memoryPageLoaded,
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

class _$InitialImpl implements _Initial {
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
    required TResult Function(String error) failure,
    required TResult Function(MemoryPage memoryPage) memoryPageLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(MemoryPage memoryPage)? memoryPageLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(MemoryPage memoryPage)? memoryPageLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPageLoaded value) memoryPageLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPageLoaded value)? memoryPageLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPageLoaded value)? memoryPageLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MemoryDeskState {
  const factory _Initial() = _$InitialImpl;
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
    required TResult Function(String error) failure,
    required TResult Function(MemoryPage memoryPage) memoryPageLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(MemoryPage memoryPage)? memoryPageLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(MemoryPage memoryPage)? memoryPageLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPageLoaded value) memoryPageLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPageLoaded value)? memoryPageLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPageLoaded value)? memoryPageLoaded,
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
    required TResult Function(String error) failure,
    required TResult Function(MemoryPage memoryPage) memoryPageLoaded,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(MemoryPage memoryPage)? memoryPageLoaded,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(MemoryPage memoryPage)? memoryPageLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPageLoaded value) memoryPageLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPageLoaded value)? memoryPageLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPageLoaded value)? memoryPageLoaded,
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
    required TResult Function(String error) failure,
    required TResult Function(MemoryPage memoryPage) memoryPageLoaded,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(MemoryPage memoryPage)? memoryPageLoaded,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(MemoryPage memoryPage)? memoryPageLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPageLoaded value) memoryPageLoaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPageLoaded value)? memoryPageLoaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPageLoaded value)? memoryPageLoaded,
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
abstract class _$$MemoryPageLoadedImplCopyWith<$Res> {
  factory _$$MemoryPageLoadedImplCopyWith(_$MemoryPageLoadedImpl value,
          $Res Function(_$MemoryPageLoadedImpl) then) =
      __$$MemoryPageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemoryPage memoryPage});
}

/// @nodoc
class __$$MemoryPageLoadedImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$MemoryPageLoadedImpl>
    implements _$$MemoryPageLoadedImplCopyWith<$Res> {
  __$$MemoryPageLoadedImplCopyWithImpl(_$MemoryPageLoadedImpl _value,
      $Res Function(_$MemoryPageLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryPage = null,
  }) {
    return _then(_$MemoryPageLoadedImpl(
      memoryPage: null == memoryPage
          ? _value.memoryPage
          : memoryPage // ignore: cast_nullable_to_non_nullable
              as MemoryPage,
    ));
  }
}

/// @nodoc

class _$MemoryPageLoadedImpl implements MemoryPageLoaded {
  const _$MemoryPageLoadedImpl({required this.memoryPage});

  @override
  final MemoryPage memoryPage;

  @override
  String toString() {
    return 'MemoryDeskState.memoryPageLoaded(memoryPage: $memoryPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryPageLoadedImpl &&
            (identical(other.memoryPage, memoryPage) ||
                other.memoryPage == memoryPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memoryPage);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryPageLoadedImplCopyWith<_$MemoryPageLoadedImpl> get copyWith =>
      __$$MemoryPageLoadedImplCopyWithImpl<_$MemoryPageLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(MemoryPage memoryPage) memoryPageLoaded,
  }) {
    return memoryPageLoaded(memoryPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(MemoryPage memoryPage)? memoryPageLoaded,
  }) {
    return memoryPageLoaded?.call(memoryPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(MemoryPage memoryPage)? memoryPageLoaded,
    required TResult orElse(),
  }) {
    if (memoryPageLoaded != null) {
      return memoryPageLoaded(memoryPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPageLoaded value) memoryPageLoaded,
  }) {
    return memoryPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPageLoaded value)? memoryPageLoaded,
  }) {
    return memoryPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPageLoaded value)? memoryPageLoaded,
    required TResult orElse(),
  }) {
    if (memoryPageLoaded != null) {
      return memoryPageLoaded(this);
    }
    return orElse();
  }
}

abstract class MemoryPageLoaded implements MemoryDeskState {
  const factory MemoryPageLoaded({required final MemoryPage memoryPage}) =
      _$MemoryPageLoadedImpl;

  MemoryPage get memoryPage;

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryPageLoadedImplCopyWith<_$MemoryPageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
