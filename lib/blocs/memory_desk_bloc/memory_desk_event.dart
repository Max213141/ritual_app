part of 'memory_desk_bloc.dart';

@freezed
class MemoryDeskEvent with _$MemoryDeskEvent {
  // Upload MemoryPage information
  const factory MemoryDeskEvent.uploadMemoryDesk({
    required MemoryDesk memoryPage,
    required LocalMemoryPageMedia mediaData,
  }) = UploadMemoryDesk;

  // Retrieve MemoryPage from Firestore
  const factory MemoryDeskEvent.getMemoryDesk() = GetMemoryDesks;

  // Store Memory Desk ID in UserData
  const factory MemoryDeskEvent.addMemoryDeskToUser({
    required String userId,
    required String memoryDeskId,
  }) = AddMemoryDeskToUser;
}
