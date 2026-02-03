// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaEvent()';
}


}

/// @nodoc
class $MediaEventCopyWith<$Res>  {
$MediaEventCopyWith(MediaEvent _, $Res Function(MediaEvent) __);
}


/// Adds pattern-matching-related methods to [MediaEvent].
extension MediaEventPatterns on MediaEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UploadMedia value)?  uploadMedia,TResult Function( GetMedia value)?  getMedia,TResult Function( DeleteMedia value)?  deleteMedia,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UploadMedia() when uploadMedia != null:
return uploadMedia(_that);case GetMedia() when getMedia != null:
return getMedia(_that);case DeleteMedia() when deleteMedia != null:
return deleteMedia(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UploadMedia value)  uploadMedia,required TResult Function( GetMedia value)  getMedia,required TResult Function( DeleteMedia value)  deleteMedia,}){
final _that = this;
switch (_that) {
case UploadMedia():
return uploadMedia(_that);case GetMedia():
return getMedia(_that);case DeleteMedia():
return deleteMedia(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UploadMedia value)?  uploadMedia,TResult? Function( GetMedia value)?  getMedia,TResult? Function( DeleteMedia value)?  deleteMedia,}){
final _that = this;
switch (_that) {
case UploadMedia() when uploadMedia != null:
return uploadMedia(_that);case GetMedia() when getMedia != null:
return getMedia(_that);case DeleteMedia() when deleteMedia != null:
return deleteMedia(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String filePath,  File file,  StreamController<double>? progressController)?  uploadMedia,TResult Function( String mediaUrl,  StreamController<double>? progressController)?  getMedia,TResult Function( String filePath)?  deleteMedia,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UploadMedia() when uploadMedia != null:
return uploadMedia(_that.filePath,_that.file,_that.progressController);case GetMedia() when getMedia != null:
return getMedia(_that.mediaUrl,_that.progressController);case DeleteMedia() when deleteMedia != null:
return deleteMedia(_that.filePath);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String filePath,  File file,  StreamController<double>? progressController)  uploadMedia,required TResult Function( String mediaUrl,  StreamController<double>? progressController)  getMedia,required TResult Function( String filePath)  deleteMedia,}) {final _that = this;
switch (_that) {
case UploadMedia():
return uploadMedia(_that.filePath,_that.file,_that.progressController);case GetMedia():
return getMedia(_that.mediaUrl,_that.progressController);case DeleteMedia():
return deleteMedia(_that.filePath);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String filePath,  File file,  StreamController<double>? progressController)?  uploadMedia,TResult? Function( String mediaUrl,  StreamController<double>? progressController)?  getMedia,TResult? Function( String filePath)?  deleteMedia,}) {final _that = this;
switch (_that) {
case UploadMedia() when uploadMedia != null:
return uploadMedia(_that.filePath,_that.file,_that.progressController);case GetMedia() when getMedia != null:
return getMedia(_that.mediaUrl,_that.progressController);case DeleteMedia() when deleteMedia != null:
return deleteMedia(_that.filePath);case _:
  return null;

}
}

}

/// @nodoc


class UploadMedia implements MediaEvent {
  const UploadMedia({required this.filePath, required this.file, this.progressController});
  

 final  String filePath;
 final  File file;
//TODO make sure that its works
 final  StreamController<double>? progressController;

/// Create a copy of MediaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadMediaCopyWith<UploadMedia> get copyWith => _$UploadMediaCopyWithImpl<UploadMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadMedia&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.file, file) || other.file == file)&&(identical(other.progressController, progressController) || other.progressController == progressController));
}


@override
int get hashCode => Object.hash(runtimeType,filePath,file,progressController);

@override
String toString() {
  return 'MediaEvent.uploadMedia(filePath: $filePath, file: $file, progressController: $progressController)';
}


}

/// @nodoc
abstract mixin class $UploadMediaCopyWith<$Res> implements $MediaEventCopyWith<$Res> {
  factory $UploadMediaCopyWith(UploadMedia value, $Res Function(UploadMedia) _then) = _$UploadMediaCopyWithImpl;
@useResult
$Res call({
 String filePath, File file, StreamController<double>? progressController
});




}
/// @nodoc
class _$UploadMediaCopyWithImpl<$Res>
    implements $UploadMediaCopyWith<$Res> {
  _$UploadMediaCopyWithImpl(this._self, this._then);

  final UploadMedia _self;
  final $Res Function(UploadMedia) _then;

/// Create a copy of MediaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,Object? file = null,Object? progressController = freezed,}) {
  return _then(UploadMedia(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,progressController: freezed == progressController ? _self.progressController : progressController // ignore: cast_nullable_to_non_nullable
as StreamController<double>?,
  ));
}


}

/// @nodoc


class GetMedia implements MediaEvent {
  const GetMedia({required this.mediaUrl, this.progressController});
  

 final  String mediaUrl;
 final  StreamController<double>? progressController;

/// Create a copy of MediaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMediaCopyWith<GetMedia> get copyWith => _$GetMediaCopyWithImpl<GetMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMedia&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.progressController, progressController) || other.progressController == progressController));
}


@override
int get hashCode => Object.hash(runtimeType,mediaUrl,progressController);

@override
String toString() {
  return 'MediaEvent.getMedia(mediaUrl: $mediaUrl, progressController: $progressController)';
}


}

/// @nodoc
abstract mixin class $GetMediaCopyWith<$Res> implements $MediaEventCopyWith<$Res> {
  factory $GetMediaCopyWith(GetMedia value, $Res Function(GetMedia) _then) = _$GetMediaCopyWithImpl;
@useResult
$Res call({
 String mediaUrl, StreamController<double>? progressController
});




}
/// @nodoc
class _$GetMediaCopyWithImpl<$Res>
    implements $GetMediaCopyWith<$Res> {
  _$GetMediaCopyWithImpl(this._self, this._then);

  final GetMedia _self;
  final $Res Function(GetMedia) _then;

/// Create a copy of MediaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mediaUrl = null,Object? progressController = freezed,}) {
  return _then(GetMedia(
mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,progressController: freezed == progressController ? _self.progressController : progressController // ignore: cast_nullable_to_non_nullable
as StreamController<double>?,
  ));
}


}

/// @nodoc


class DeleteMedia implements MediaEvent {
  const DeleteMedia({required this.filePath});
  

 final  String filePath;

/// Create a copy of MediaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteMediaCopyWith<DeleteMedia> get copyWith => _$DeleteMediaCopyWithImpl<DeleteMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteMedia&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'MediaEvent.deleteMedia(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class $DeleteMediaCopyWith<$Res> implements $MediaEventCopyWith<$Res> {
  factory $DeleteMediaCopyWith(DeleteMedia value, $Res Function(DeleteMedia) _then) = _$DeleteMediaCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class _$DeleteMediaCopyWithImpl<$Res>
    implements $DeleteMediaCopyWith<$Res> {
  _$DeleteMediaCopyWithImpl(this._self, this._then);

  final DeleteMedia _self;
  final $Res Function(DeleteMedia) _then;

/// Create a copy of MediaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(DeleteMedia(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MediaState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaState()';
}


}

/// @nodoc
class $MediaStateCopyWith<$Res>  {
$MediaStateCopyWith(MediaState _, $Res Function(MediaState) __);
}


/// Adds pattern-matching-related methods to [MediaState].
extension MediaStatePatterns on MediaState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingMedia value)?  loadingMedia,TResult Function( UploadingMedia value)?  uploadingMedia,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingMedia() when loadingMedia != null:
return loadingMedia(_that);case UploadingMedia() when uploadingMedia != null:
return uploadingMedia(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingMedia value)  loadingMedia,required TResult Function( UploadingMedia value)  uploadingMedia,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingMedia():
return loadingMedia(_that);case UploadingMedia():
return uploadingMedia(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingMedia value)?  loadingMedia,TResult? Function( UploadingMedia value)?  uploadingMedia,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingMedia() when loadingMedia != null:
return loadingMedia(_that);case UploadingMedia() when uploadingMedia != null:
return uploadingMedia(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingMedia,TResult Function()?  uploadingMedia,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingMedia() when loadingMedia != null:
return loadingMedia();case UploadingMedia() when uploadingMedia != null:
return uploadingMedia();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingMedia,required TResult Function()  uploadingMedia,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingMedia():
return loadingMedia();case UploadingMedia():
return uploadingMedia();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingMedia,TResult? Function()?  uploadingMedia,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingMedia() when loadingMedia != null:
return loadingMedia();case UploadingMedia() when uploadingMedia != null:
return uploadingMedia();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MediaState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaState.initial()';
}


}




/// @nodoc


class LoadingMedia implements MediaState {
  const LoadingMedia();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingMedia);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaState.loadingMedia()';
}


}




/// @nodoc


class UploadingMedia implements MediaState {
  const UploadingMedia();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadingMedia);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaState.uploadingMedia()';
}


}




// dart format on
