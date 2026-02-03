// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_desk_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemoryDeskEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemoryDeskEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemoryDeskEvent()';
}


}

/// @nodoc
class $MemoryDeskEventCopyWith<$Res>  {
$MemoryDeskEventCopyWith(MemoryDeskEvent _, $Res Function(MemoryDeskEvent) __);
}


/// Adds pattern-matching-related methods to [MemoryDeskEvent].
extension MemoryDeskEventPatterns on MemoryDeskEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UploadMemoryDesk value)?  uploadMemoryDesk,TResult Function( GetMemoryDesks value)?  getMemoryDesks,TResult Function( AddMemoryDeskToUser value)?  addMemoryDeskToUser,TResult Function( LoadMemoryDesk value)?  loadMemoryDesk,TResult Function( UpdateMemoryDesk value)?  updateMemoryDesk,TResult Function( DeleteMemoryDesk value)?  deleteMemoryDesk,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UploadMemoryDesk() when uploadMemoryDesk != null:
return uploadMemoryDesk(_that);case GetMemoryDesks() when getMemoryDesks != null:
return getMemoryDesks(_that);case AddMemoryDeskToUser() when addMemoryDeskToUser != null:
return addMemoryDeskToUser(_that);case LoadMemoryDesk() when loadMemoryDesk != null:
return loadMemoryDesk(_that);case UpdateMemoryDesk() when updateMemoryDesk != null:
return updateMemoryDesk(_that);case DeleteMemoryDesk() when deleteMemoryDesk != null:
return deleteMemoryDesk(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UploadMemoryDesk value)  uploadMemoryDesk,required TResult Function( GetMemoryDesks value)  getMemoryDesks,required TResult Function( AddMemoryDeskToUser value)  addMemoryDeskToUser,required TResult Function( LoadMemoryDesk value)  loadMemoryDesk,required TResult Function( UpdateMemoryDesk value)  updateMemoryDesk,required TResult Function( DeleteMemoryDesk value)  deleteMemoryDesk,}){
final _that = this;
switch (_that) {
case UploadMemoryDesk():
return uploadMemoryDesk(_that);case GetMemoryDesks():
return getMemoryDesks(_that);case AddMemoryDeskToUser():
return addMemoryDeskToUser(_that);case LoadMemoryDesk():
return loadMemoryDesk(_that);case UpdateMemoryDesk():
return updateMemoryDesk(_that);case DeleteMemoryDesk():
return deleteMemoryDesk(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UploadMemoryDesk value)?  uploadMemoryDesk,TResult? Function( GetMemoryDesks value)?  getMemoryDesks,TResult? Function( AddMemoryDeskToUser value)?  addMemoryDeskToUser,TResult? Function( LoadMemoryDesk value)?  loadMemoryDesk,TResult? Function( UpdateMemoryDesk value)?  updateMemoryDesk,TResult? Function( DeleteMemoryDesk value)?  deleteMemoryDesk,}){
final _that = this;
switch (_that) {
case UploadMemoryDesk() when uploadMemoryDesk != null:
return uploadMemoryDesk(_that);case GetMemoryDesks() when getMemoryDesks != null:
return getMemoryDesks(_that);case AddMemoryDeskToUser() when addMemoryDeskToUser != null:
return addMemoryDeskToUser(_that);case LoadMemoryDesk() when loadMemoryDesk != null:
return loadMemoryDesk(_that);case UpdateMemoryDesk() when updateMemoryDesk != null:
return updateMemoryDesk(_that);case DeleteMemoryDesk() when deleteMemoryDesk != null:
return deleteMemoryDesk(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MemoryDesk memoryPage,  EditableMedia mediaData)?  uploadMemoryDesk,TResult Function()?  getMemoryDesks,TResult Function( String userId,  String memoryDeskId)?  addMemoryDeskToUser,TResult Function( String memoryDeskId)?  loadMemoryDesk,TResult Function( String deskId,  MemoryDesk memoryPage,  EditableMedia newMedia)?  updateMemoryDesk,TResult Function( String deskId,  List<String> photoUrls,  List<String> videoUrls,  String? avatarUrl)?  deleteMemoryDesk,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UploadMemoryDesk() when uploadMemoryDesk != null:
return uploadMemoryDesk(_that.memoryPage,_that.mediaData);case GetMemoryDesks() when getMemoryDesks != null:
return getMemoryDesks();case AddMemoryDeskToUser() when addMemoryDeskToUser != null:
return addMemoryDeskToUser(_that.userId,_that.memoryDeskId);case LoadMemoryDesk() when loadMemoryDesk != null:
return loadMemoryDesk(_that.memoryDeskId);case UpdateMemoryDesk() when updateMemoryDesk != null:
return updateMemoryDesk(_that.deskId,_that.memoryPage,_that.newMedia);case DeleteMemoryDesk() when deleteMemoryDesk != null:
return deleteMemoryDesk(_that.deskId,_that.photoUrls,_that.videoUrls,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MemoryDesk memoryPage,  EditableMedia mediaData)  uploadMemoryDesk,required TResult Function()  getMemoryDesks,required TResult Function( String userId,  String memoryDeskId)  addMemoryDeskToUser,required TResult Function( String memoryDeskId)  loadMemoryDesk,required TResult Function( String deskId,  MemoryDesk memoryPage,  EditableMedia newMedia)  updateMemoryDesk,required TResult Function( String deskId,  List<String> photoUrls,  List<String> videoUrls,  String? avatarUrl)  deleteMemoryDesk,}) {final _that = this;
switch (_that) {
case UploadMemoryDesk():
return uploadMemoryDesk(_that.memoryPage,_that.mediaData);case GetMemoryDesks():
return getMemoryDesks();case AddMemoryDeskToUser():
return addMemoryDeskToUser(_that.userId,_that.memoryDeskId);case LoadMemoryDesk():
return loadMemoryDesk(_that.memoryDeskId);case UpdateMemoryDesk():
return updateMemoryDesk(_that.deskId,_that.memoryPage,_that.newMedia);case DeleteMemoryDesk():
return deleteMemoryDesk(_that.deskId,_that.photoUrls,_that.videoUrls,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MemoryDesk memoryPage,  EditableMedia mediaData)?  uploadMemoryDesk,TResult? Function()?  getMemoryDesks,TResult? Function( String userId,  String memoryDeskId)?  addMemoryDeskToUser,TResult? Function( String memoryDeskId)?  loadMemoryDesk,TResult? Function( String deskId,  MemoryDesk memoryPage,  EditableMedia newMedia)?  updateMemoryDesk,TResult? Function( String deskId,  List<String> photoUrls,  List<String> videoUrls,  String? avatarUrl)?  deleteMemoryDesk,}) {final _that = this;
switch (_that) {
case UploadMemoryDesk() when uploadMemoryDesk != null:
return uploadMemoryDesk(_that.memoryPage,_that.mediaData);case GetMemoryDesks() when getMemoryDesks != null:
return getMemoryDesks();case AddMemoryDeskToUser() when addMemoryDeskToUser != null:
return addMemoryDeskToUser(_that.userId,_that.memoryDeskId);case LoadMemoryDesk() when loadMemoryDesk != null:
return loadMemoryDesk(_that.memoryDeskId);case UpdateMemoryDesk() when updateMemoryDesk != null:
return updateMemoryDesk(_that.deskId,_that.memoryPage,_that.newMedia);case DeleteMemoryDesk() when deleteMemoryDesk != null:
return deleteMemoryDesk(_that.deskId,_that.photoUrls,_that.videoUrls,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc


class UploadMemoryDesk implements MemoryDeskEvent {
  const UploadMemoryDesk({required this.memoryPage, required this.mediaData});
  

 final  MemoryDesk memoryPage;
 final  EditableMedia mediaData;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadMemoryDeskCopyWith<UploadMemoryDesk> get copyWith => _$UploadMemoryDeskCopyWithImpl<UploadMemoryDesk>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadMemoryDesk&&(identical(other.memoryPage, memoryPage) || other.memoryPage == memoryPage)&&(identical(other.mediaData, mediaData) || other.mediaData == mediaData));
}


@override
int get hashCode => Object.hash(runtimeType,memoryPage,mediaData);

@override
String toString() {
  return 'MemoryDeskEvent.uploadMemoryDesk(memoryPage: $memoryPage, mediaData: $mediaData)';
}


}

/// @nodoc
abstract mixin class $UploadMemoryDeskCopyWith<$Res> implements $MemoryDeskEventCopyWith<$Res> {
  factory $UploadMemoryDeskCopyWith(UploadMemoryDesk value, $Res Function(UploadMemoryDesk) _then) = _$UploadMemoryDeskCopyWithImpl;
@useResult
$Res call({
 MemoryDesk memoryPage, EditableMedia mediaData
});




}
/// @nodoc
class _$UploadMemoryDeskCopyWithImpl<$Res>
    implements $UploadMemoryDeskCopyWith<$Res> {
  _$UploadMemoryDeskCopyWithImpl(this._self, this._then);

  final UploadMemoryDesk _self;
  final $Res Function(UploadMemoryDesk) _then;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memoryPage = null,Object? mediaData = null,}) {
  return _then(UploadMemoryDesk(
memoryPage: null == memoryPage ? _self.memoryPage : memoryPage // ignore: cast_nullable_to_non_nullable
as MemoryDesk,mediaData: null == mediaData ? _self.mediaData : mediaData // ignore: cast_nullable_to_non_nullable
as EditableMedia,
  ));
}


}

/// @nodoc


class GetMemoryDesks implements MemoryDeskEvent {
  const GetMemoryDesks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMemoryDesks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemoryDeskEvent.getMemoryDesks()';
}


}




/// @nodoc


class AddMemoryDeskToUser implements MemoryDeskEvent {
  const AddMemoryDeskToUser({required this.userId, required this.memoryDeskId});
  

 final  String userId;
 final  String memoryDeskId;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemoryDeskToUserCopyWith<AddMemoryDeskToUser> get copyWith => _$AddMemoryDeskToUserCopyWithImpl<AddMemoryDeskToUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemoryDeskToUser&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.memoryDeskId, memoryDeskId) || other.memoryDeskId == memoryDeskId));
}


@override
int get hashCode => Object.hash(runtimeType,userId,memoryDeskId);

@override
String toString() {
  return 'MemoryDeskEvent.addMemoryDeskToUser(userId: $userId, memoryDeskId: $memoryDeskId)';
}


}

/// @nodoc
abstract mixin class $AddMemoryDeskToUserCopyWith<$Res> implements $MemoryDeskEventCopyWith<$Res> {
  factory $AddMemoryDeskToUserCopyWith(AddMemoryDeskToUser value, $Res Function(AddMemoryDeskToUser) _then) = _$AddMemoryDeskToUserCopyWithImpl;
@useResult
$Res call({
 String userId, String memoryDeskId
});




}
/// @nodoc
class _$AddMemoryDeskToUserCopyWithImpl<$Res>
    implements $AddMemoryDeskToUserCopyWith<$Res> {
  _$AddMemoryDeskToUserCopyWithImpl(this._self, this._then);

  final AddMemoryDeskToUser _self;
  final $Res Function(AddMemoryDeskToUser) _then;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? memoryDeskId = null,}) {
  return _then(AddMemoryDeskToUser(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,memoryDeskId: null == memoryDeskId ? _self.memoryDeskId : memoryDeskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadMemoryDesk implements MemoryDeskEvent {
  const LoadMemoryDesk({required this.memoryDeskId});
  

 final  String memoryDeskId;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMemoryDeskCopyWith<LoadMemoryDesk> get copyWith => _$LoadMemoryDeskCopyWithImpl<LoadMemoryDesk>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMemoryDesk&&(identical(other.memoryDeskId, memoryDeskId) || other.memoryDeskId == memoryDeskId));
}


@override
int get hashCode => Object.hash(runtimeType,memoryDeskId);

@override
String toString() {
  return 'MemoryDeskEvent.loadMemoryDesk(memoryDeskId: $memoryDeskId)';
}


}

/// @nodoc
abstract mixin class $LoadMemoryDeskCopyWith<$Res> implements $MemoryDeskEventCopyWith<$Res> {
  factory $LoadMemoryDeskCopyWith(LoadMemoryDesk value, $Res Function(LoadMemoryDesk) _then) = _$LoadMemoryDeskCopyWithImpl;
@useResult
$Res call({
 String memoryDeskId
});




}
/// @nodoc
class _$LoadMemoryDeskCopyWithImpl<$Res>
    implements $LoadMemoryDeskCopyWith<$Res> {
  _$LoadMemoryDeskCopyWithImpl(this._self, this._then);

  final LoadMemoryDesk _self;
  final $Res Function(LoadMemoryDesk) _then;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memoryDeskId = null,}) {
  return _then(LoadMemoryDesk(
memoryDeskId: null == memoryDeskId ? _self.memoryDeskId : memoryDeskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateMemoryDesk implements MemoryDeskEvent {
  const UpdateMemoryDesk({required this.deskId, required this.memoryPage, required this.newMedia});
  

 final  String deskId;
 final  MemoryDesk memoryPage;
// the form’s “final” MemoryPage (with new photoUrls/videoUrls)
 final  EditableMedia newMedia;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMemoryDeskCopyWith<UpdateMemoryDesk> get copyWith => _$UpdateMemoryDeskCopyWithImpl<UpdateMemoryDesk>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMemoryDesk&&(identical(other.deskId, deskId) || other.deskId == deskId)&&(identical(other.memoryPage, memoryPage) || other.memoryPage == memoryPage)&&(identical(other.newMedia, newMedia) || other.newMedia == newMedia));
}


@override
int get hashCode => Object.hash(runtimeType,deskId,memoryPage,newMedia);

@override
String toString() {
  return 'MemoryDeskEvent.updateMemoryDesk(deskId: $deskId, memoryPage: $memoryPage, newMedia: $newMedia)';
}


}

/// @nodoc
abstract mixin class $UpdateMemoryDeskCopyWith<$Res> implements $MemoryDeskEventCopyWith<$Res> {
  factory $UpdateMemoryDeskCopyWith(UpdateMemoryDesk value, $Res Function(UpdateMemoryDesk) _then) = _$UpdateMemoryDeskCopyWithImpl;
@useResult
$Res call({
 String deskId, MemoryDesk memoryPage, EditableMedia newMedia
});




}
/// @nodoc
class _$UpdateMemoryDeskCopyWithImpl<$Res>
    implements $UpdateMemoryDeskCopyWith<$Res> {
  _$UpdateMemoryDeskCopyWithImpl(this._self, this._then);

  final UpdateMemoryDesk _self;
  final $Res Function(UpdateMemoryDesk) _then;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deskId = null,Object? memoryPage = null,Object? newMedia = null,}) {
  return _then(UpdateMemoryDesk(
deskId: null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as String,memoryPage: null == memoryPage ? _self.memoryPage : memoryPage // ignore: cast_nullable_to_non_nullable
as MemoryDesk,newMedia: null == newMedia ? _self.newMedia : newMedia // ignore: cast_nullable_to_non_nullable
as EditableMedia,
  ));
}


}

/// @nodoc


class DeleteMemoryDesk implements MemoryDeskEvent {
  const DeleteMemoryDesk({required this.deskId, required final  List<String> photoUrls, required final  List<String> videoUrls, this.avatarUrl}): _photoUrls = photoUrls,_videoUrls = videoUrls;
  

 final  String deskId;
 final  List<String> _photoUrls;
 List<String> get photoUrls {
  if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoUrls);
}

 final  List<String> _videoUrls;
 List<String> get videoUrls {
  if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoUrls);
}

 final  String? avatarUrl;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteMemoryDeskCopyWith<DeleteMemoryDesk> get copyWith => _$DeleteMemoryDeskCopyWithImpl<DeleteMemoryDesk>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteMemoryDesk&&(identical(other.deskId, deskId) || other.deskId == deskId)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&const DeepCollectionEquality().equals(other._videoUrls, _videoUrls)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,deskId,const DeepCollectionEquality().hash(_photoUrls),const DeepCollectionEquality().hash(_videoUrls),avatarUrl);

@override
String toString() {
  return 'MemoryDeskEvent.deleteMemoryDesk(deskId: $deskId, photoUrls: $photoUrls, videoUrls: $videoUrls, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $DeleteMemoryDeskCopyWith<$Res> implements $MemoryDeskEventCopyWith<$Res> {
  factory $DeleteMemoryDeskCopyWith(DeleteMemoryDesk value, $Res Function(DeleteMemoryDesk) _then) = _$DeleteMemoryDeskCopyWithImpl;
@useResult
$Res call({
 String deskId, List<String> photoUrls, List<String> videoUrls, String? avatarUrl
});




}
/// @nodoc
class _$DeleteMemoryDeskCopyWithImpl<$Res>
    implements $DeleteMemoryDeskCopyWith<$Res> {
  _$DeleteMemoryDeskCopyWithImpl(this._self, this._then);

  final DeleteMemoryDesk _self;
  final $Res Function(DeleteMemoryDesk) _then;

/// Create a copy of MemoryDeskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deskId = null,Object? photoUrls = null,Object? videoUrls = null,Object? avatarUrl = freezed,}) {
  return _then(DeleteMemoryDesk(
deskId: null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as String,photoUrls: null == photoUrls ? _self._photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrls: null == videoUrls ? _self._videoUrls : videoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$MemoryDeskState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemoryDeskState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemoryDeskState()';
}


}

/// @nodoc
class $MemoryDeskStateCopyWith<$Res>  {
$MemoryDeskStateCopyWith(MemoryDeskState _, $Res Function(MemoryDeskState) __);
}


/// Adds pattern-matching-related methods to [MemoryDeskState].
extension MemoryDeskStatePatterns on MemoryDeskState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( DeletionSuccess value)?  deletionSuccess,TResult Function( Failure value)?  failure,TResult Function( MemoryDesksLoaded value)?  memoryDesksLoaded,TResult Function( MemoryDeskLoaded value)?  memoryDeskLoaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case DeletionSuccess() when deletionSuccess != null:
return deletionSuccess(_that);case Failure() when failure != null:
return failure(_that);case MemoryDesksLoaded() when memoryDesksLoaded != null:
return memoryDesksLoaded(_that);case MemoryDeskLoaded() when memoryDeskLoaded != null:
return memoryDeskLoaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( DeletionSuccess value)  deletionSuccess,required TResult Function( Failure value)  failure,required TResult Function( MemoryDesksLoaded value)  memoryDesksLoaded,required TResult Function( MemoryDeskLoaded value)  memoryDeskLoaded,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case DeletionSuccess():
return deletionSuccess(_that);case Failure():
return failure(_that);case MemoryDesksLoaded():
return memoryDesksLoaded(_that);case MemoryDeskLoaded():
return memoryDeskLoaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( DeletionSuccess value)?  deletionSuccess,TResult? Function( Failure value)?  failure,TResult? Function( MemoryDesksLoaded value)?  memoryDesksLoaded,TResult? Function( MemoryDeskLoaded value)?  memoryDeskLoaded,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case DeletionSuccess() when deletionSuccess != null:
return deletionSuccess(_that);case Failure() when failure != null:
return failure(_that);case MemoryDesksLoaded() when memoryDesksLoaded != null:
return memoryDesksLoaded(_that);case MemoryDeskLoaded() when memoryDeskLoaded != null:
return memoryDeskLoaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function()?  deletionSuccess,TResult Function( String error)?  failure,TResult Function( List<MemoryDesk> memoryDesks,  List<String> memoryDeskIds)?  memoryDesksLoaded,TResult Function( MemoryDesk memoryDesk,  String memoryDeskIds)?  memoryDeskLoaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success();case DeletionSuccess() when deletionSuccess != null:
return deletionSuccess();case Failure() when failure != null:
return failure(_that.error);case MemoryDesksLoaded() when memoryDesksLoaded != null:
return memoryDesksLoaded(_that.memoryDesks,_that.memoryDeskIds);case MemoryDeskLoaded() when memoryDeskLoaded != null:
return memoryDeskLoaded(_that.memoryDesk,_that.memoryDeskIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function()  deletionSuccess,required TResult Function( String error)  failure,required TResult Function( List<MemoryDesk> memoryDesks,  List<String> memoryDeskIds)  memoryDesksLoaded,required TResult Function( MemoryDesk memoryDesk,  String memoryDeskIds)  memoryDeskLoaded,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Success():
return success();case DeletionSuccess():
return deletionSuccess();case Failure():
return failure(_that.error);case MemoryDesksLoaded():
return memoryDesksLoaded(_that.memoryDesks,_that.memoryDeskIds);case MemoryDeskLoaded():
return memoryDeskLoaded(_that.memoryDesk,_that.memoryDeskIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function()?  deletionSuccess,TResult? Function( String error)?  failure,TResult? Function( List<MemoryDesk> memoryDesks,  List<String> memoryDeskIds)?  memoryDesksLoaded,TResult? Function( MemoryDesk memoryDesk,  String memoryDeskIds)?  memoryDeskLoaded,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success();case DeletionSuccess() when deletionSuccess != null:
return deletionSuccess();case Failure() when failure != null:
return failure(_that.error);case MemoryDesksLoaded() when memoryDesksLoaded != null:
return memoryDesksLoaded(_that.memoryDesks,_that.memoryDeskIds);case MemoryDeskLoaded() when memoryDeskLoaded != null:
return memoryDeskLoaded(_that.memoryDesk,_that.memoryDeskIds);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements MemoryDeskState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemoryDeskState.initial()';
}


}




/// @nodoc


class Loading implements MemoryDeskState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemoryDeskState.loading()';
}


}




/// @nodoc


class Success implements MemoryDeskState {
  const Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemoryDeskState.success()';
}


}




/// @nodoc


class DeletionSuccess implements MemoryDeskState {
  const DeletionSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletionSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemoryDeskState.deletionSuccess()';
}


}




/// @nodoc


class Failure implements MemoryDeskState {
  const Failure({required this.error});
  

 final  String error;

/// Create a copy of MemoryDeskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'MemoryDeskState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $MemoryDeskStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of MemoryDeskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Failure(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MemoryDesksLoaded implements MemoryDeskState {
  const MemoryDesksLoaded({required final  List<MemoryDesk> memoryDesks, required final  List<String> memoryDeskIds}): _memoryDesks = memoryDesks,_memoryDeskIds = memoryDeskIds;
  

 final  List<MemoryDesk> _memoryDesks;
 List<MemoryDesk> get memoryDesks {
  if (_memoryDesks is EqualUnmodifiableListView) return _memoryDesks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memoryDesks);
}

 final  List<String> _memoryDeskIds;
 List<String> get memoryDeskIds {
  if (_memoryDeskIds is EqualUnmodifiableListView) return _memoryDeskIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memoryDeskIds);
}


/// Create a copy of MemoryDeskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemoryDesksLoadedCopyWith<MemoryDesksLoaded> get copyWith => _$MemoryDesksLoadedCopyWithImpl<MemoryDesksLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemoryDesksLoaded&&const DeepCollectionEquality().equals(other._memoryDesks, _memoryDesks)&&const DeepCollectionEquality().equals(other._memoryDeskIds, _memoryDeskIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_memoryDesks),const DeepCollectionEquality().hash(_memoryDeskIds));

@override
String toString() {
  return 'MemoryDeskState.memoryDesksLoaded(memoryDesks: $memoryDesks, memoryDeskIds: $memoryDeskIds)';
}


}

/// @nodoc
abstract mixin class $MemoryDesksLoadedCopyWith<$Res> implements $MemoryDeskStateCopyWith<$Res> {
  factory $MemoryDesksLoadedCopyWith(MemoryDesksLoaded value, $Res Function(MemoryDesksLoaded) _then) = _$MemoryDesksLoadedCopyWithImpl;
@useResult
$Res call({
 List<MemoryDesk> memoryDesks, List<String> memoryDeskIds
});




}
/// @nodoc
class _$MemoryDesksLoadedCopyWithImpl<$Res>
    implements $MemoryDesksLoadedCopyWith<$Res> {
  _$MemoryDesksLoadedCopyWithImpl(this._self, this._then);

  final MemoryDesksLoaded _self;
  final $Res Function(MemoryDesksLoaded) _then;

/// Create a copy of MemoryDeskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memoryDesks = null,Object? memoryDeskIds = null,}) {
  return _then(MemoryDesksLoaded(
memoryDesks: null == memoryDesks ? _self._memoryDesks : memoryDesks // ignore: cast_nullable_to_non_nullable
as List<MemoryDesk>,memoryDeskIds: null == memoryDeskIds ? _self._memoryDeskIds : memoryDeskIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class MemoryDeskLoaded implements MemoryDeskState {
  const MemoryDeskLoaded({required this.memoryDesk, required this.memoryDeskIds});
  

 final  MemoryDesk memoryDesk;
 final  String memoryDeskIds;

/// Create a copy of MemoryDeskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemoryDeskLoadedCopyWith<MemoryDeskLoaded> get copyWith => _$MemoryDeskLoadedCopyWithImpl<MemoryDeskLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemoryDeskLoaded&&(identical(other.memoryDesk, memoryDesk) || other.memoryDesk == memoryDesk)&&(identical(other.memoryDeskIds, memoryDeskIds) || other.memoryDeskIds == memoryDeskIds));
}


@override
int get hashCode => Object.hash(runtimeType,memoryDesk,memoryDeskIds);

@override
String toString() {
  return 'MemoryDeskState.memoryDeskLoaded(memoryDesk: $memoryDesk, memoryDeskIds: $memoryDeskIds)';
}


}

/// @nodoc
abstract mixin class $MemoryDeskLoadedCopyWith<$Res> implements $MemoryDeskStateCopyWith<$Res> {
  factory $MemoryDeskLoadedCopyWith(MemoryDeskLoaded value, $Res Function(MemoryDeskLoaded) _then) = _$MemoryDeskLoadedCopyWithImpl;
@useResult
$Res call({
 MemoryDesk memoryDesk, String memoryDeskIds
});




}
/// @nodoc
class _$MemoryDeskLoadedCopyWithImpl<$Res>
    implements $MemoryDeskLoadedCopyWith<$Res> {
  _$MemoryDeskLoadedCopyWithImpl(this._self, this._then);

  final MemoryDeskLoaded _self;
  final $Res Function(MemoryDeskLoaded) _then;

/// Create a copy of MemoryDeskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memoryDesk = null,Object? memoryDeskIds = null,}) {
  return _then(MemoryDeskLoaded(
memoryDesk: null == memoryDesk ? _self.memoryDesk : memoryDesk // ignore: cast_nullable_to_non_nullable
as MemoryDesk,memoryDeskIds: null == memoryDeskIds ? _self.memoryDeskIds : memoryDeskIds // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
