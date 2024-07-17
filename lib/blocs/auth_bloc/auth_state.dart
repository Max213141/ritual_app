part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _AuthLoadingState;
  const factory AuthState.sendingCode() = _AuthSendingCodeState;

  const factory AuthState.userCreated({
    // @Default(Playlist(name: '', tracks: [])) Playlist playlist,
    @Default('') String email,
    @Default('') String password,
  }) = _AuthUserCreatedState;

  const factory AuthState.logInSuccess({
    // @Default(Playlist(name: '', tracks: [])) Playlist playlist,
    @Default('') String email,
    @Default('') String password,
  }) = _AuthLogInSuccessState;

  const factory AuthState.logOutSuccess() = _AuthLogOutSuccessState;

  const factory AuthState.resetCodeSentSuccesfully(
      {@Default('') String email}) = _AuthResetCodeSentSuccesfullyState;

  const factory AuthState.resetCodeError({
    @Default('Password reset link not sent \n Please try again later')
    String errorText,
  }) = _AuthResetCodeErrorState;

  const factory AuthState.authError({
    @Default('Authication error \n Please try again') String errorText,
  }) = _AuthErrorState;
}
