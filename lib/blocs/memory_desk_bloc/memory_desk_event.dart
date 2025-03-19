part of 'memory_desk_bloc.dart';

@freezed
class MemoryDeskEvent with _$MemoryDeskEvent {
  // Upload MemoryPage information
  const factory MemoryDeskEvent.uploadMemoryPage({
    required MemoryPage memoryPage,
    required MemoryPageMedia mediaData,
    required String userId,
  }) = UploadMemoryPage;

  // Retrieve MemoryPage from Firestore
  const factory MemoryDeskEvent.getMemoryPage({required String memoryDeskId}) =
      GetMemoryPage;

  // Store Memory Desk ID in UserData
  const factory MemoryDeskEvent.addMemoryDeskToUser({
    required String userId,
    required String memoryDeskId,
  }) = AddMemoryDeskToUser;
}
