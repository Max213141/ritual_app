part of 'memory_desk_bloc.dart';

@freezed
class MemoryDeskState with _$MemoryDeskState {
  const factory MemoryDeskState.initial() = Initial;
  const factory MemoryDeskState.loading() = Loading;
  const factory MemoryDeskState.success() = Success;
  const factory MemoryDeskState.deletionSuccess() = DeletionSuccess;

  const factory MemoryDeskState.failure({
    required String error,
  }) = Failure;

  const factory MemoryDeskState.memoryDesksLoaded({
    required List<MemoryDesk> memoryDesks,
    required List<String> memoryDeskIds,
  }) = MemoryDesksLoaded;

  const factory MemoryDeskState.memoryDeskLoaded({
    required MemoryDesk memoryDesk,
    required String memoryDeskIds,
  }) = MemoryDeskLoaded;
}
