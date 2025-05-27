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
            MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesk,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesk,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesk,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesk,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesk,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesk,
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
abstract class _$$UploadMemoryDeskImplCopyWith<$Res> {
  factory _$$UploadMemoryDeskImplCopyWith(_$UploadMemoryDeskImpl value,
          $Res Function(_$UploadMemoryDeskImpl) then) =
      __$$UploadMemoryDeskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemoryDesk memoryPage, LocalMemoryPageMedia mediaData});
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
              as LocalMemoryPageMedia,
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
  final LocalMemoryPageMedia mediaData;

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
    required TResult Function(
            MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesk,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
  }) {
    return uploadMemoryDesk(memoryPage, mediaData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesk,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
  }) {
    return uploadMemoryDesk?.call(memoryPage, mediaData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesk,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
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
    required TResult Function(GetMemoryDesks value) getMemoryDesk,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
  }) {
    return uploadMemoryDesk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesk,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
  }) {
    return uploadMemoryDesk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesk,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
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
      required final LocalMemoryPageMedia mediaData}) = _$UploadMemoryDeskImpl;

  MemoryDesk get memoryPage;
  LocalMemoryPageMedia get mediaData;

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
    return 'MemoryDeskEvent.getMemoryDesk()';
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
    required TResult Function(
            MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesk,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
  }) {
    return getMemoryDesk();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesk,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
  }) {
    return getMemoryDesk?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesk,
    TResult Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
    required TResult orElse(),
  }) {
    if (getMemoryDesk != null) {
      return getMemoryDesk();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesk,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
  }) {
    return getMemoryDesk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesk,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
  }) {
    return getMemoryDesk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesk,
    TResult Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
    required TResult orElse(),
  }) {
    if (getMemoryDesk != null) {
      return getMemoryDesk(this);
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
    required TResult Function(
            MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)
        uploadMemoryDesk,
    required TResult Function() getMemoryDesk,
    required TResult Function(String userId, String memoryDeskId)
        addMemoryDeskToUser,
  }) {
    return addMemoryDeskToUser(userId, memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)?
        uploadMemoryDesk,
    TResult? Function()? getMemoryDesk,
    TResult? Function(String userId, String memoryDeskId)? addMemoryDeskToUser,
  }) {
    return addMemoryDeskToUser?.call(userId, memoryDeskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MemoryDesk memoryPage, LocalMemoryPageMedia mediaData)?
        uploadMemoryDesk,
    TResult Function()? getMemoryDesk,
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
    required TResult Function(UploadMemoryDesk value) uploadMemoryDesk,
    required TResult Function(GetMemoryDesks value) getMemoryDesk,
    required TResult Function(AddMemoryDeskToUser value) addMemoryDeskToUser,
  }) {
    return addMemoryDeskToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult? Function(GetMemoryDesks value)? getMemoryDesk,
    TResult? Function(AddMemoryDeskToUser value)? addMemoryDeskToUser,
  }) {
    return addMemoryDeskToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadMemoryDesk value)? uploadMemoryDesk,
    TResult Function(GetMemoryDesks value)? getMemoryDesk,
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
    required TResult Function(
            List<MemoryDesk> memoryPages, List<String> memoryDeskIds)
        memoryPagesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPagesLoaded value) memoryPagesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPagesLoaded value)? memoryPagesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPagesLoaded value)? memoryPagesLoaded,
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
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryPages, List<String> memoryDeskIds)
        memoryPagesLoaded,
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
    TResult? Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
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
    TResult Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
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
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPagesLoaded value) memoryPagesLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPagesLoaded value)? memoryPagesLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPagesLoaded value)? memoryPagesLoaded,
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
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryPages, List<String> memoryDeskIds)
        memoryPagesLoaded,
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
    TResult? Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
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
    TResult Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
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
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPagesLoaded value) memoryPagesLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPagesLoaded value)? memoryPagesLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPagesLoaded value)? memoryPagesLoaded,
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
    required TResult Function(
            List<MemoryDesk> memoryPages, List<String> memoryDeskIds)
        memoryPagesLoaded,
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
    TResult? Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
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
    TResult Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
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
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPagesLoaded value) memoryPagesLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPagesLoaded value)? memoryPagesLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPagesLoaded value)? memoryPagesLoaded,
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
    required TResult Function(
            List<MemoryDesk> memoryPages, List<String> memoryDeskIds)
        memoryPagesLoaded,
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
    TResult? Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
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
    TResult Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
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
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPagesLoaded value) memoryPagesLoaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPagesLoaded value)? memoryPagesLoaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPagesLoaded value)? memoryPagesLoaded,
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
abstract class _$$MemoryPagesLoadedImplCopyWith<$Res> {
  factory _$$MemoryPagesLoadedImplCopyWith(_$MemoryPagesLoadedImpl value,
          $Res Function(_$MemoryPagesLoadedImpl) then) =
      __$$MemoryPagesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MemoryDesk> memoryPages, List<String> memoryDeskIds});
}

/// @nodoc
class __$$MemoryPagesLoadedImplCopyWithImpl<$Res>
    extends _$MemoryDeskStateCopyWithImpl<$Res, _$MemoryPagesLoadedImpl>
    implements _$$MemoryPagesLoadedImplCopyWith<$Res> {
  __$$MemoryPagesLoadedImplCopyWithImpl(_$MemoryPagesLoadedImpl _value,
      $Res Function(_$MemoryPagesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryPages = null,
    Object? memoryDeskIds = null,
  }) {
    return _then(_$MemoryPagesLoadedImpl(
      memoryPages: null == memoryPages
          ? _value._memoryPages
          : memoryPages // ignore: cast_nullable_to_non_nullable
              as List<MemoryDesk>,
      memoryDeskIds: null == memoryDeskIds
          ? _value._memoryDeskIds
          : memoryDeskIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MemoryPagesLoadedImpl implements MemoryPagesLoaded {
  const _$MemoryPagesLoadedImpl(
      {required final List<MemoryDesk> memoryPages,
      required final List<String> memoryDeskIds})
      : _memoryPages = memoryPages,
        _memoryDeskIds = memoryDeskIds;

  final List<MemoryDesk> _memoryPages;
  @override
  List<MemoryDesk> get memoryPages {
    if (_memoryPages is EqualUnmodifiableListView) return _memoryPages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memoryPages);
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
    return 'MemoryDeskState.memoryPagesLoaded(memoryPages: $memoryPages, memoryDeskIds: $memoryDeskIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryPagesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._memoryPages, _memoryPages) &&
            const DeepCollectionEquality()
                .equals(other._memoryDeskIds, _memoryDeskIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_memoryPages),
      const DeepCollectionEquality().hash(_memoryDeskIds));

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryPagesLoadedImplCopyWith<_$MemoryPagesLoadedImpl> get copyWith =>
      __$$MemoryPagesLoadedImplCopyWithImpl<_$MemoryPagesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
    required TResult Function(
            List<MemoryDesk> memoryPages, List<String> memoryDeskIds)
        memoryPagesLoaded,
  }) {
    return memoryPagesLoaded(memoryPages, memoryDeskIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
    TResult? Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
  }) {
    return memoryPagesLoaded?.call(memoryPages, memoryDeskIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    TResult Function(List<MemoryDesk> memoryPages, List<String> memoryDeskIds)?
        memoryPagesLoaded,
    required TResult orElse(),
  }) {
    if (memoryPagesLoaded != null) {
      return memoryPagesLoaded(memoryPages, memoryDeskIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(MemoryPagesLoaded value) memoryPagesLoaded,
  }) {
    return memoryPagesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(MemoryPagesLoaded value)? memoryPagesLoaded,
  }) {
    return memoryPagesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(MemoryPagesLoaded value)? memoryPagesLoaded,
    required TResult orElse(),
  }) {
    if (memoryPagesLoaded != null) {
      return memoryPagesLoaded(this);
    }
    return orElse();
  }
}

abstract class MemoryPagesLoaded implements MemoryDeskState {
  const factory MemoryPagesLoaded(
      {required final List<MemoryDesk> memoryPages,
      required final List<String> memoryDeskIds}) = _$MemoryPagesLoadedImpl;

  List<MemoryDesk> get memoryPages;
  List<String> get memoryDeskIds;

  /// Create a copy of MemoryDeskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryPagesLoadedImplCopyWith<_$MemoryPagesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
