// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedia,
    required TResult Function(File file, String filePath,
            StreamController<double> progressController)
        uploadMedia,
    required TResult Function() deleteMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedia,
    TResult? Function(File file, String filePath,
            StreamController<double> progressController)?
        uploadMedia,
    TResult? Function()? deleteMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedia,
    TResult Function(File file, String filePath,
            StreamController<double> progressController)?
        uploadMedia,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMedia value) getMedia,
    required TResult Function(UploadMedia value) uploadMedia,
    required TResult Function(DeleteMedia value) deleteMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMedia value)? getMedia,
    TResult? Function(UploadMedia value)? uploadMedia,
    TResult? Function(DeleteMedia value)? deleteMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMedia value)? getMedia,
    TResult Function(UploadMedia value)? uploadMedia,
    TResult Function(DeleteMedia value)? deleteMedia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaEventCopyWith<$Res> {
  factory $MediaEventCopyWith(
          MediaEvent value, $Res Function(MediaEvent) then) =
      _$MediaEventCopyWithImpl<$Res, MediaEvent>;
}

/// @nodoc
class _$MediaEventCopyWithImpl<$Res, $Val extends MediaEvent>
    implements $MediaEventCopyWith<$Res> {
  _$MediaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMediaImplCopyWith<$Res> {
  factory _$$GetMediaImplCopyWith(
          _$GetMediaImpl value, $Res Function(_$GetMediaImpl) then) =
      __$$GetMediaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMediaImplCopyWithImpl<$Res>
    extends _$MediaEventCopyWithImpl<$Res, _$GetMediaImpl>
    implements _$$GetMediaImplCopyWith<$Res> {
  __$$GetMediaImplCopyWithImpl(
      _$GetMediaImpl _value, $Res Function(_$GetMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMediaImpl implements GetMedia {
  const _$GetMediaImpl();

  @override
  String toString() {
    return 'MediaEvent.getMedia()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMediaImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedia,
    required TResult Function(File file, String filePath,
            StreamController<double> progressController)
        uploadMedia,
    required TResult Function() deleteMedia,
  }) {
    return getMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedia,
    TResult? Function(File file, String filePath,
            StreamController<double> progressController)?
        uploadMedia,
    TResult? Function()? deleteMedia,
  }) {
    return getMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedia,
    TResult Function(File file, String filePath,
            StreamController<double> progressController)?
        uploadMedia,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) {
    if (getMedia != null) {
      return getMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMedia value) getMedia,
    required TResult Function(UploadMedia value) uploadMedia,
    required TResult Function(DeleteMedia value) deleteMedia,
  }) {
    return getMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMedia value)? getMedia,
    TResult? Function(UploadMedia value)? uploadMedia,
    TResult? Function(DeleteMedia value)? deleteMedia,
  }) {
    return getMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMedia value)? getMedia,
    TResult Function(UploadMedia value)? uploadMedia,
    TResult Function(DeleteMedia value)? deleteMedia,
    required TResult orElse(),
  }) {
    if (getMedia != null) {
      return getMedia(this);
    }
    return orElse();
  }
}

abstract class GetMedia implements MediaEvent {
  const factory GetMedia() = _$GetMediaImpl;
}

/// @nodoc
abstract class _$$UploadMediaImplCopyWith<$Res> {
  factory _$$UploadMediaImplCopyWith(
          _$UploadMediaImpl value, $Res Function(_$UploadMediaImpl) then) =
      __$$UploadMediaImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {File file,
      String filePath,
      StreamController<double> progressController});
}

/// @nodoc
class __$$UploadMediaImplCopyWithImpl<$Res>
    extends _$MediaEventCopyWithImpl<$Res, _$UploadMediaImpl>
    implements _$$UploadMediaImplCopyWith<$Res> {
  __$$UploadMediaImplCopyWithImpl(
      _$UploadMediaImpl _value, $Res Function(_$UploadMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? filePath = null,
    Object? progressController = null,
  }) {
    return _then(_$UploadMediaImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      progressController: null == progressController
          ? _value.progressController
          : progressController // ignore: cast_nullable_to_non_nullable
              as StreamController<double>,
    ));
  }
}

/// @nodoc

class _$UploadMediaImpl implements UploadMedia {
  const _$UploadMediaImpl(
      {required this.file,
      required this.filePath,
      required this.progressController});

  @override
  final File file;
  @override
  final String filePath;
  @override
  final StreamController<double> progressController;

  @override
  String toString() {
    return 'MediaEvent.uploadMedia(file: $file, filePath: $filePath, progressController: $progressController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadMediaImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.progressController, progressController) ||
                other.progressController == progressController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, file, filePath, progressController);

  /// Create a copy of MediaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadMediaImplCopyWith<_$UploadMediaImpl> get copyWith =>
      __$$UploadMediaImplCopyWithImpl<_$UploadMediaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedia,
    required TResult Function(File file, String filePath,
            StreamController<double> progressController)
        uploadMedia,
    required TResult Function() deleteMedia,
  }) {
    return uploadMedia(file, filePath, progressController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedia,
    TResult? Function(File file, String filePath,
            StreamController<double> progressController)?
        uploadMedia,
    TResult? Function()? deleteMedia,
  }) {
    return uploadMedia?.call(file, filePath, progressController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedia,
    TResult Function(File file, String filePath,
            StreamController<double> progressController)?
        uploadMedia,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) {
    if (uploadMedia != null) {
      return uploadMedia(file, filePath, progressController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMedia value) getMedia,
    required TResult Function(UploadMedia value) uploadMedia,
    required TResult Function(DeleteMedia value) deleteMedia,
  }) {
    return uploadMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMedia value)? getMedia,
    TResult? Function(UploadMedia value)? uploadMedia,
    TResult? Function(DeleteMedia value)? deleteMedia,
  }) {
    return uploadMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMedia value)? getMedia,
    TResult Function(UploadMedia value)? uploadMedia,
    TResult Function(DeleteMedia value)? deleteMedia,
    required TResult orElse(),
  }) {
    if (uploadMedia != null) {
      return uploadMedia(this);
    }
    return orElse();
  }
}

abstract class UploadMedia implements MediaEvent {
  const factory UploadMedia(
          {required final File file,
          required final String filePath,
          required final StreamController<double> progressController}) =
      _$UploadMediaImpl;

  File get file;
  String get filePath;
  StreamController<double> get progressController;

  /// Create a copy of MediaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadMediaImplCopyWith<_$UploadMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMediaImplCopyWith<$Res> {
  factory _$$DeleteMediaImplCopyWith(
          _$DeleteMediaImpl value, $Res Function(_$DeleteMediaImpl) then) =
      __$$DeleteMediaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteMediaImplCopyWithImpl<$Res>
    extends _$MediaEventCopyWithImpl<$Res, _$DeleteMediaImpl>
    implements _$$DeleteMediaImplCopyWith<$Res> {
  __$$DeleteMediaImplCopyWithImpl(
      _$DeleteMediaImpl _value, $Res Function(_$DeleteMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteMediaImpl implements DeleteMedia {
  const _$DeleteMediaImpl();

  @override
  String toString() {
    return 'MediaEvent.deleteMedia()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteMediaImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedia,
    required TResult Function(File file, String filePath,
            StreamController<double> progressController)
        uploadMedia,
    required TResult Function() deleteMedia,
  }) {
    return deleteMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMedia,
    TResult? Function(File file, String filePath,
            StreamController<double> progressController)?
        uploadMedia,
    TResult? Function()? deleteMedia,
  }) {
    return deleteMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedia,
    TResult Function(File file, String filePath,
            StreamController<double> progressController)?
        uploadMedia,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) {
    if (deleteMedia != null) {
      return deleteMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMedia value) getMedia,
    required TResult Function(UploadMedia value) uploadMedia,
    required TResult Function(DeleteMedia value) deleteMedia,
  }) {
    return deleteMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMedia value)? getMedia,
    TResult? Function(UploadMedia value)? uploadMedia,
    TResult? Function(DeleteMedia value)? deleteMedia,
  }) {
    return deleteMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMedia value)? getMedia,
    TResult Function(UploadMedia value)? uploadMedia,
    TResult Function(DeleteMedia value)? deleteMedia,
    required TResult orElse(),
  }) {
    if (deleteMedia != null) {
      return deleteMedia(this);
    }
    return orElse();
  }
}

abstract class DeleteMedia implements MediaEvent {
  const factory DeleteMedia() = _$DeleteMediaImpl;
}

/// @nodoc
mixin _$MediaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingMedia,
    required TResult Function() uploadingMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMedia,
    TResult? Function()? uploadingMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMedia,
    TResult Function()? uploadingMedia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingMedia value) loadingMedia,
    required TResult Function(UploadingMedia value) uploadingMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingMedia value)? loadingMedia,
    TResult? Function(UploadingMedia value)? uploadingMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingMedia value)? loadingMedia,
    TResult Function(UploadingMedia value)? uploadingMedia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaStateCopyWith<$Res> {
  factory $MediaStateCopyWith(
          MediaState value, $Res Function(MediaState) then) =
      _$MediaStateCopyWithImpl<$Res, MediaState>;
}

/// @nodoc
class _$MediaStateCopyWithImpl<$Res, $Val extends MediaState>
    implements $MediaStateCopyWith<$Res> {
  _$MediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaState
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
    extends _$MediaStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MediaState.initial()';
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
    required TResult Function() loadingMedia,
    required TResult Function() uploadingMedia,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMedia,
    TResult? Function()? uploadingMedia,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMedia,
    TResult Function()? uploadingMedia,
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
    required TResult Function(LoadingMedia value) loadingMedia,
    required TResult Function(UploadingMedia value) uploadingMedia,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingMedia value)? loadingMedia,
    TResult? Function(UploadingMedia value)? uploadingMedia,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingMedia value)? loadingMedia,
    TResult Function(UploadingMedia value)? uploadingMedia,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MediaState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingMediaImplCopyWith<$Res> {
  factory _$$LoadingMediaImplCopyWith(
          _$LoadingMediaImpl value, $Res Function(_$LoadingMediaImpl) then) =
      __$$LoadingMediaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMediaImplCopyWithImpl<$Res>
    extends _$MediaStateCopyWithImpl<$Res, _$LoadingMediaImpl>
    implements _$$LoadingMediaImplCopyWith<$Res> {
  __$$LoadingMediaImplCopyWithImpl(
      _$LoadingMediaImpl _value, $Res Function(_$LoadingMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingMediaImpl implements LoadingMedia {
  const _$LoadingMediaImpl();

  @override
  String toString() {
    return 'MediaState.loadingMedia()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMediaImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingMedia,
    required TResult Function() uploadingMedia,
  }) {
    return loadingMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMedia,
    TResult? Function()? uploadingMedia,
  }) {
    return loadingMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMedia,
    TResult Function()? uploadingMedia,
    required TResult orElse(),
  }) {
    if (loadingMedia != null) {
      return loadingMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingMedia value) loadingMedia,
    required TResult Function(UploadingMedia value) uploadingMedia,
  }) {
    return loadingMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingMedia value)? loadingMedia,
    TResult? Function(UploadingMedia value)? uploadingMedia,
  }) {
    return loadingMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingMedia value)? loadingMedia,
    TResult Function(UploadingMedia value)? uploadingMedia,
    required TResult orElse(),
  }) {
    if (loadingMedia != null) {
      return loadingMedia(this);
    }
    return orElse();
  }
}

abstract class LoadingMedia implements MediaState {
  const factory LoadingMedia() = _$LoadingMediaImpl;
}

/// @nodoc
abstract class _$$UploadingMediaImplCopyWith<$Res> {
  factory _$$UploadingMediaImplCopyWith(_$UploadingMediaImpl value,
          $Res Function(_$UploadingMediaImpl) then) =
      __$$UploadingMediaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadingMediaImplCopyWithImpl<$Res>
    extends _$MediaStateCopyWithImpl<$Res, _$UploadingMediaImpl>
    implements _$$UploadingMediaImplCopyWith<$Res> {
  __$$UploadingMediaImplCopyWithImpl(
      _$UploadingMediaImpl _value, $Res Function(_$UploadingMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadingMediaImpl implements UploadingMedia {
  const _$UploadingMediaImpl();

  @override
  String toString() {
    return 'MediaState.uploadingMedia()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadingMediaImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingMedia,
    required TResult Function() uploadingMedia,
  }) {
    return uploadingMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingMedia,
    TResult? Function()? uploadingMedia,
  }) {
    return uploadingMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingMedia,
    TResult Function()? uploadingMedia,
    required TResult orElse(),
  }) {
    if (uploadingMedia != null) {
      return uploadingMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingMedia value) loadingMedia,
    required TResult Function(UploadingMedia value) uploadingMedia,
  }) {
    return uploadingMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingMedia value)? loadingMedia,
    TResult? Function(UploadingMedia value)? uploadingMedia,
  }) {
    return uploadingMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingMedia value)? loadingMedia,
    TResult Function(UploadingMedia value)? uploadingMedia,
    required TResult orElse(),
  }) {
    if (uploadingMedia != null) {
      return uploadingMedia(this);
    }
    return orElse();
  }
}

abstract class UploadingMedia implements MediaState {
  const factory UploadingMedia() = _$UploadingMediaImpl;
}
