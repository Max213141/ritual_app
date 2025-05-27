part of 'memory_desk_bloc.dart';

@freezed
class MemoryDeskState with _$MemoryDeskState {
  const factory MemoryDeskState.initial() = Initial;
  const factory MemoryDeskState.loading() = Loading;
  const factory MemoryDeskState.success() = Success;
  const factory MemoryDeskState.failure({
    required String error,
  }) = Failure;
  const factory MemoryDeskState.memoryPagesLoaded({
    required List<MemoryDesk> memoryPages,
    required List<String> memoryDeskIds,
  }) = MemoryPagesLoaded;
}
