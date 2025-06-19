part of 'memory_desk_bloc.dart';

@freezed
class MemoryDeskEvent with _$MemoryDeskEvent {
  // Upload MemoryPage information
  const factory MemoryDeskEvent.uploadMemoryDesk({
    required MemoryDesk memoryPage,
    required EditableMedia mediaData,
  }) = UploadMemoryDesk;

  // Retrieve MemoryPage from Firestore
  const factory MemoryDeskEvent.getMemoryDesks() = GetMemoryDesks;

  // Store Memory Desk ID in UserData
  const factory MemoryDeskEvent.addMemoryDeskToUser({
    required String userId,
    required String memoryDeskId,
  }) = AddMemoryDeskToUser;

  const factory MemoryDeskEvent.loadMemoryDesk({
    required String memoryDeskId,
  }) = LoadMemoryDesk;

  const factory MemoryDeskEvent.updateMemoryDesk({
    required String deskId,
    required MemoryDesk
        memoryPage, // the form’s “final” MemoryPage (with new photoUrls/videoUrls)
    required EditableMedia newMedia,
  }) = UpdateMemoryDesk;

  const factory MemoryDeskEvent.deleteMemoryDesk({
    required String deskId,
    required List<String> photoUrls,
    required List<String> videoUrls,
    String? avatarUrl,
  }) = DeleteMemoryDesk;
}
