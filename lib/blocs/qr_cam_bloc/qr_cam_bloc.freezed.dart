// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_cam_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrCamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() qrCamPermissionCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? qrCamPermissionCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? qrCamPermissionCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrCamPermissionCheck value) qrCamPermissionCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QrCamPermissionCheck value)? qrCamPermissionCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrCamPermissionCheck value)? qrCamPermissionCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCamEventCopyWith<$Res> {
  factory $QrCamEventCopyWith(
          QrCamEvent value, $Res Function(QrCamEvent) then) =
      _$QrCamEventCopyWithImpl<$Res, QrCamEvent>;
}

/// @nodoc
class _$QrCamEventCopyWithImpl<$Res, $Val extends QrCamEvent>
    implements $QrCamEventCopyWith<$Res> {
  _$QrCamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QrCamPermissionCheckImplCopyWith<$Res> {
  factory _$$QrCamPermissionCheckImplCopyWith(_$QrCamPermissionCheckImpl value,
          $Res Function(_$QrCamPermissionCheckImpl) then) =
      __$$QrCamPermissionCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrCamPermissionCheckImplCopyWithImpl<$Res>
    extends _$QrCamEventCopyWithImpl<$Res, _$QrCamPermissionCheckImpl>
    implements _$$QrCamPermissionCheckImplCopyWith<$Res> {
  __$$QrCamPermissionCheckImplCopyWithImpl(_$QrCamPermissionCheckImpl _value,
      $Res Function(_$QrCamPermissionCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QrCamPermissionCheckImpl
    with DiagnosticableTreeMixin
    implements QrCamPermissionCheck {
  const _$QrCamPermissionCheckImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCamEvent.qrCamPermissionCheck()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'QrCamEvent.qrCamPermissionCheck'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCamPermissionCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() qrCamPermissionCheck,
  }) {
    return qrCamPermissionCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? qrCamPermissionCheck,
  }) {
    return qrCamPermissionCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? qrCamPermissionCheck,
    required TResult orElse(),
  }) {
    if (qrCamPermissionCheck != null) {
      return qrCamPermissionCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrCamPermissionCheck value) qrCamPermissionCheck,
  }) {
    return qrCamPermissionCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QrCamPermissionCheck value)? qrCamPermissionCheck,
  }) {
    return qrCamPermissionCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrCamPermissionCheck value)? qrCamPermissionCheck,
    required TResult orElse(),
  }) {
    if (qrCamPermissionCheck != null) {
      return qrCamPermissionCheck(this);
    }
    return orElse();
  }
}

abstract class QrCamPermissionCheck implements QrCamEvent {
  const factory QrCamPermissionCheck() = _$QrCamPermissionCheckImpl;
}

/// @nodoc
mixin _$QrCamState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrCamLoading,
    required TResult Function() qrCamPermissionDenied,
    required TResult Function() qrCamPermissionPermamentlyDenied,
    required TResult Function() qrCamPermissionGranted,
    required TResult Function(Object? error, bool? needPop) qrCamError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? qrCamLoading,
    TResult? Function()? qrCamPermissionDenied,
    TResult? Function()? qrCamPermissionPermamentlyDenied,
    TResult? Function()? qrCamPermissionGranted,
    TResult? Function(Object? error, bool? needPop)? qrCamError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrCamLoading,
    TResult Function()? qrCamPermissionDenied,
    TResult Function()? qrCamPermissionPermamentlyDenied,
    TResult Function()? qrCamPermissionGranted,
    TResult Function(Object? error, bool? needPop)? qrCamError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(QrCamLoading value) qrCamLoading,
    required TResult Function(QrCamPermissionDenied value)
        qrCamPermissionDenied,
    required TResult Function(QrCamPermissionPermamentlyDenied value)
        qrCamPermissionPermamentlyDenied,
    required TResult Function(QrCamPermissionGranted value)
        qrCamPermissionGranted,
    required TResult Function(QrCamError value) qrCamError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(QrCamLoading value)? qrCamLoading,
    TResult? Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult? Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult? Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult? Function(QrCamError value)? qrCamError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(QrCamLoading value)? qrCamLoading,
    TResult Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult Function(QrCamError value)? qrCamError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCamStateCopyWith<$Res> {
  factory $QrCamStateCopyWith(
          QrCamState value, $Res Function(QrCamState) then) =
      _$QrCamStateCopyWithImpl<$Res, QrCamState>;
}

/// @nodoc
class _$QrCamStateCopyWithImpl<$Res, $Val extends QrCamState>
    implements $QrCamStateCopyWith<$Res> {
  _$QrCamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QrCamStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCamState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QrCamState.initial'));
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
    required TResult Function() qrCamLoading,
    required TResult Function() qrCamPermissionDenied,
    required TResult Function() qrCamPermissionPermamentlyDenied,
    required TResult Function() qrCamPermissionGranted,
    required TResult Function(Object? error, bool? needPop) qrCamError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? qrCamLoading,
    TResult? Function()? qrCamPermissionDenied,
    TResult? Function()? qrCamPermissionPermamentlyDenied,
    TResult? Function()? qrCamPermissionGranted,
    TResult? Function(Object? error, bool? needPop)? qrCamError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrCamLoading,
    TResult Function()? qrCamPermissionDenied,
    TResult Function()? qrCamPermissionPermamentlyDenied,
    TResult Function()? qrCamPermissionGranted,
    TResult Function(Object? error, bool? needPop)? qrCamError,
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
    required TResult Function(QrCamLoading value) qrCamLoading,
    required TResult Function(QrCamPermissionDenied value)
        qrCamPermissionDenied,
    required TResult Function(QrCamPermissionPermamentlyDenied value)
        qrCamPermissionPermamentlyDenied,
    required TResult Function(QrCamPermissionGranted value)
        qrCamPermissionGranted,
    required TResult Function(QrCamError value) qrCamError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(QrCamLoading value)? qrCamLoading,
    TResult? Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult? Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult? Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult? Function(QrCamError value)? qrCamError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(QrCamLoading value)? qrCamLoading,
    TResult Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult Function(QrCamError value)? qrCamError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QrCamState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$QrCamLoadingImplCopyWith<$Res> {
  factory _$$QrCamLoadingImplCopyWith(
          _$QrCamLoadingImpl value, $Res Function(_$QrCamLoadingImpl) then) =
      __$$QrCamLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrCamLoadingImplCopyWithImpl<$Res>
    extends _$QrCamStateCopyWithImpl<$Res, _$QrCamLoadingImpl>
    implements _$$QrCamLoadingImplCopyWith<$Res> {
  __$$QrCamLoadingImplCopyWithImpl(
      _$QrCamLoadingImpl _value, $Res Function(_$QrCamLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QrCamLoadingImpl with DiagnosticableTreeMixin implements QrCamLoading {
  const _$QrCamLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCamState.qrCamLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QrCamState.qrCamLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QrCamLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrCamLoading,
    required TResult Function() qrCamPermissionDenied,
    required TResult Function() qrCamPermissionPermamentlyDenied,
    required TResult Function() qrCamPermissionGranted,
    required TResult Function(Object? error, bool? needPop) qrCamError,
  }) {
    return qrCamLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? qrCamLoading,
    TResult? Function()? qrCamPermissionDenied,
    TResult? Function()? qrCamPermissionPermamentlyDenied,
    TResult? Function()? qrCamPermissionGranted,
    TResult? Function(Object? error, bool? needPop)? qrCamError,
  }) {
    return qrCamLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrCamLoading,
    TResult Function()? qrCamPermissionDenied,
    TResult Function()? qrCamPermissionPermamentlyDenied,
    TResult Function()? qrCamPermissionGranted,
    TResult Function(Object? error, bool? needPop)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamLoading != null) {
      return qrCamLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(QrCamLoading value) qrCamLoading,
    required TResult Function(QrCamPermissionDenied value)
        qrCamPermissionDenied,
    required TResult Function(QrCamPermissionPermamentlyDenied value)
        qrCamPermissionPermamentlyDenied,
    required TResult Function(QrCamPermissionGranted value)
        qrCamPermissionGranted,
    required TResult Function(QrCamError value) qrCamError,
  }) {
    return qrCamLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(QrCamLoading value)? qrCamLoading,
    TResult? Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult? Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult? Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult? Function(QrCamError value)? qrCamError,
  }) {
    return qrCamLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(QrCamLoading value)? qrCamLoading,
    TResult Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult Function(QrCamError value)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamLoading != null) {
      return qrCamLoading(this);
    }
    return orElse();
  }
}

abstract class QrCamLoading implements QrCamState {
  const factory QrCamLoading() = _$QrCamLoadingImpl;
}

/// @nodoc
abstract class _$$QrCamPermissionDeniedImplCopyWith<$Res> {
  factory _$$QrCamPermissionDeniedImplCopyWith(
          _$QrCamPermissionDeniedImpl value,
          $Res Function(_$QrCamPermissionDeniedImpl) then) =
      __$$QrCamPermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrCamPermissionDeniedImplCopyWithImpl<$Res>
    extends _$QrCamStateCopyWithImpl<$Res, _$QrCamPermissionDeniedImpl>
    implements _$$QrCamPermissionDeniedImplCopyWith<$Res> {
  __$$QrCamPermissionDeniedImplCopyWithImpl(_$QrCamPermissionDeniedImpl _value,
      $Res Function(_$QrCamPermissionDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QrCamPermissionDeniedImpl
    with DiagnosticableTreeMixin
    implements QrCamPermissionDenied {
  const _$QrCamPermissionDeniedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCamState.qrCamPermissionDenied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'QrCamState.qrCamPermissionDenied'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCamPermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrCamLoading,
    required TResult Function() qrCamPermissionDenied,
    required TResult Function() qrCamPermissionPermamentlyDenied,
    required TResult Function() qrCamPermissionGranted,
    required TResult Function(Object? error, bool? needPop) qrCamError,
  }) {
    return qrCamPermissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? qrCamLoading,
    TResult? Function()? qrCamPermissionDenied,
    TResult? Function()? qrCamPermissionPermamentlyDenied,
    TResult? Function()? qrCamPermissionGranted,
    TResult? Function(Object? error, bool? needPop)? qrCamError,
  }) {
    return qrCamPermissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrCamLoading,
    TResult Function()? qrCamPermissionDenied,
    TResult Function()? qrCamPermissionPermamentlyDenied,
    TResult Function()? qrCamPermissionGranted,
    TResult Function(Object? error, bool? needPop)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamPermissionDenied != null) {
      return qrCamPermissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(QrCamLoading value) qrCamLoading,
    required TResult Function(QrCamPermissionDenied value)
        qrCamPermissionDenied,
    required TResult Function(QrCamPermissionPermamentlyDenied value)
        qrCamPermissionPermamentlyDenied,
    required TResult Function(QrCamPermissionGranted value)
        qrCamPermissionGranted,
    required TResult Function(QrCamError value) qrCamError,
  }) {
    return qrCamPermissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(QrCamLoading value)? qrCamLoading,
    TResult? Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult? Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult? Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult? Function(QrCamError value)? qrCamError,
  }) {
    return qrCamPermissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(QrCamLoading value)? qrCamLoading,
    TResult Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult Function(QrCamError value)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamPermissionDenied != null) {
      return qrCamPermissionDenied(this);
    }
    return orElse();
  }
}

abstract class QrCamPermissionDenied implements QrCamState {
  const factory QrCamPermissionDenied() = _$QrCamPermissionDeniedImpl;
}

/// @nodoc
abstract class _$$QrCamPermissionPermamentlyDeniedImplCopyWith<$Res> {
  factory _$$QrCamPermissionPermamentlyDeniedImplCopyWith(
          _$QrCamPermissionPermamentlyDeniedImpl value,
          $Res Function(_$QrCamPermissionPermamentlyDeniedImpl) then) =
      __$$QrCamPermissionPermamentlyDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrCamPermissionPermamentlyDeniedImplCopyWithImpl<$Res>
    extends _$QrCamStateCopyWithImpl<$Res,
        _$QrCamPermissionPermamentlyDeniedImpl>
    implements _$$QrCamPermissionPermamentlyDeniedImplCopyWith<$Res> {
  __$$QrCamPermissionPermamentlyDeniedImplCopyWithImpl(
      _$QrCamPermissionPermamentlyDeniedImpl _value,
      $Res Function(_$QrCamPermissionPermamentlyDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QrCamPermissionPermamentlyDeniedImpl
    with DiagnosticableTreeMixin
    implements QrCamPermissionPermamentlyDenied {
  const _$QrCamPermissionPermamentlyDeniedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCamState.qrCamPermissionPermamentlyDenied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'QrCamState.qrCamPermissionPermamentlyDenied'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCamPermissionPermamentlyDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrCamLoading,
    required TResult Function() qrCamPermissionDenied,
    required TResult Function() qrCamPermissionPermamentlyDenied,
    required TResult Function() qrCamPermissionGranted,
    required TResult Function(Object? error, bool? needPop) qrCamError,
  }) {
    return qrCamPermissionPermamentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? qrCamLoading,
    TResult? Function()? qrCamPermissionDenied,
    TResult? Function()? qrCamPermissionPermamentlyDenied,
    TResult? Function()? qrCamPermissionGranted,
    TResult? Function(Object? error, bool? needPop)? qrCamError,
  }) {
    return qrCamPermissionPermamentlyDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrCamLoading,
    TResult Function()? qrCamPermissionDenied,
    TResult Function()? qrCamPermissionPermamentlyDenied,
    TResult Function()? qrCamPermissionGranted,
    TResult Function(Object? error, bool? needPop)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamPermissionPermamentlyDenied != null) {
      return qrCamPermissionPermamentlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(QrCamLoading value) qrCamLoading,
    required TResult Function(QrCamPermissionDenied value)
        qrCamPermissionDenied,
    required TResult Function(QrCamPermissionPermamentlyDenied value)
        qrCamPermissionPermamentlyDenied,
    required TResult Function(QrCamPermissionGranted value)
        qrCamPermissionGranted,
    required TResult Function(QrCamError value) qrCamError,
  }) {
    return qrCamPermissionPermamentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(QrCamLoading value)? qrCamLoading,
    TResult? Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult? Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult? Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult? Function(QrCamError value)? qrCamError,
  }) {
    return qrCamPermissionPermamentlyDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(QrCamLoading value)? qrCamLoading,
    TResult Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult Function(QrCamError value)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamPermissionPermamentlyDenied != null) {
      return qrCamPermissionPermamentlyDenied(this);
    }
    return orElse();
  }
}

abstract class QrCamPermissionPermamentlyDenied implements QrCamState {
  const factory QrCamPermissionPermamentlyDenied() =
      _$QrCamPermissionPermamentlyDeniedImpl;
}

/// @nodoc
abstract class _$$QrCamPermissionGrantedImplCopyWith<$Res> {
  factory _$$QrCamPermissionGrantedImplCopyWith(
          _$QrCamPermissionGrantedImpl value,
          $Res Function(_$QrCamPermissionGrantedImpl) then) =
      __$$QrCamPermissionGrantedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrCamPermissionGrantedImplCopyWithImpl<$Res>
    extends _$QrCamStateCopyWithImpl<$Res, _$QrCamPermissionGrantedImpl>
    implements _$$QrCamPermissionGrantedImplCopyWith<$Res> {
  __$$QrCamPermissionGrantedImplCopyWithImpl(
      _$QrCamPermissionGrantedImpl _value,
      $Res Function(_$QrCamPermissionGrantedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QrCamPermissionGrantedImpl
    with DiagnosticableTreeMixin
    implements QrCamPermissionGranted {
  const _$QrCamPermissionGrantedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCamState.qrCamPermissionGranted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'QrCamState.qrCamPermissionGranted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCamPermissionGrantedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrCamLoading,
    required TResult Function() qrCamPermissionDenied,
    required TResult Function() qrCamPermissionPermamentlyDenied,
    required TResult Function() qrCamPermissionGranted,
    required TResult Function(Object? error, bool? needPop) qrCamError,
  }) {
    return qrCamPermissionGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? qrCamLoading,
    TResult? Function()? qrCamPermissionDenied,
    TResult? Function()? qrCamPermissionPermamentlyDenied,
    TResult? Function()? qrCamPermissionGranted,
    TResult? Function(Object? error, bool? needPop)? qrCamError,
  }) {
    return qrCamPermissionGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrCamLoading,
    TResult Function()? qrCamPermissionDenied,
    TResult Function()? qrCamPermissionPermamentlyDenied,
    TResult Function()? qrCamPermissionGranted,
    TResult Function(Object? error, bool? needPop)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamPermissionGranted != null) {
      return qrCamPermissionGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(QrCamLoading value) qrCamLoading,
    required TResult Function(QrCamPermissionDenied value)
        qrCamPermissionDenied,
    required TResult Function(QrCamPermissionPermamentlyDenied value)
        qrCamPermissionPermamentlyDenied,
    required TResult Function(QrCamPermissionGranted value)
        qrCamPermissionGranted,
    required TResult Function(QrCamError value) qrCamError,
  }) {
    return qrCamPermissionGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(QrCamLoading value)? qrCamLoading,
    TResult? Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult? Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult? Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult? Function(QrCamError value)? qrCamError,
  }) {
    return qrCamPermissionGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(QrCamLoading value)? qrCamLoading,
    TResult Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult Function(QrCamError value)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamPermissionGranted != null) {
      return qrCamPermissionGranted(this);
    }
    return orElse();
  }
}

abstract class QrCamPermissionGranted implements QrCamState {
  const factory QrCamPermissionGranted() = _$QrCamPermissionGrantedImpl;
}

/// @nodoc
abstract class _$$QrCamErrorImplCopyWith<$Res> {
  factory _$$QrCamErrorImplCopyWith(
          _$QrCamErrorImpl value, $Res Function(_$QrCamErrorImpl) then) =
      __$$QrCamErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, bool? needPop});
}

/// @nodoc
class __$$QrCamErrorImplCopyWithImpl<$Res>
    extends _$QrCamStateCopyWithImpl<$Res, _$QrCamErrorImpl>
    implements _$$QrCamErrorImplCopyWith<$Res> {
  __$$QrCamErrorImplCopyWithImpl(
      _$QrCamErrorImpl _value, $Res Function(_$QrCamErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? needPop = freezed,
  }) {
    return _then(_$QrCamErrorImpl(
      error: freezed == error ? _value.error : error,
      needPop: freezed == needPop
          ? _value.needPop
          : needPop // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$QrCamErrorImpl with DiagnosticableTreeMixin implements QrCamError {
  const _$QrCamErrorImpl({this.error = '', this.needPop = false});

  @override
  @JsonKey()
  final Object? error;
  @override
  @JsonKey()
  final bool? needPop;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCamState.qrCamError(error: $error, needPop: $needPop)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrCamState.qrCamError'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('needPop', needPop));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCamErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.needPop, needPop) || other.needPop == needPop));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), needPop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrCamErrorImplCopyWith<_$QrCamErrorImpl> get copyWith =>
      __$$QrCamErrorImplCopyWithImpl<_$QrCamErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrCamLoading,
    required TResult Function() qrCamPermissionDenied,
    required TResult Function() qrCamPermissionPermamentlyDenied,
    required TResult Function() qrCamPermissionGranted,
    required TResult Function(Object? error, bool? needPop) qrCamError,
  }) {
    return qrCamError(error, needPop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? qrCamLoading,
    TResult? Function()? qrCamPermissionDenied,
    TResult? Function()? qrCamPermissionPermamentlyDenied,
    TResult? Function()? qrCamPermissionGranted,
    TResult? Function(Object? error, bool? needPop)? qrCamError,
  }) {
    return qrCamError?.call(error, needPop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrCamLoading,
    TResult Function()? qrCamPermissionDenied,
    TResult Function()? qrCamPermissionPermamentlyDenied,
    TResult Function()? qrCamPermissionGranted,
    TResult Function(Object? error, bool? needPop)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamError != null) {
      return qrCamError(error, needPop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(QrCamLoading value) qrCamLoading,
    required TResult Function(QrCamPermissionDenied value)
        qrCamPermissionDenied,
    required TResult Function(QrCamPermissionPermamentlyDenied value)
        qrCamPermissionPermamentlyDenied,
    required TResult Function(QrCamPermissionGranted value)
        qrCamPermissionGranted,
    required TResult Function(QrCamError value) qrCamError,
  }) {
    return qrCamError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(QrCamLoading value)? qrCamLoading,
    TResult? Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult? Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult? Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult? Function(QrCamError value)? qrCamError,
  }) {
    return qrCamError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(QrCamLoading value)? qrCamLoading,
    TResult Function(QrCamPermissionDenied value)? qrCamPermissionDenied,
    TResult Function(QrCamPermissionPermamentlyDenied value)?
        qrCamPermissionPermamentlyDenied,
    TResult Function(QrCamPermissionGranted value)? qrCamPermissionGranted,
    TResult Function(QrCamError value)? qrCamError,
    required TResult orElse(),
  }) {
    if (qrCamError != null) {
      return qrCamError(this);
    }
    return orElse();
  }
}

abstract class QrCamError implements QrCamState {
  const factory QrCamError({final Object? error, final bool? needPop}) =
      _$QrCamErrorImpl;

  Object? get error;
  bool? get needPop;
  @JsonKey(ignore: true)
  _$$QrCamErrorImplCopyWith<_$QrCamErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
