part of 'memory_desk_bloc.dart';

@freezed
class MemoryDeskState with _$MemoryDeskState {
  const factory MemoryDeskState.initial() = _Initial;
  const factory MemoryDeskState.loading() = Loading;
  const factory MemoryDeskState.success() = Success;
  const factory MemoryDeskState.failure({required String error}) = Failure;
  const factory MemoryDeskState.memoryPageLoaded(
      {required MemoryPage memoryPage}) = MemoryPageLoaded;
}
