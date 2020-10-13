part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.fullNameChanged(String fullNameStr) =
      FullNameChanged;
  const factory SignUpFormEvent.emailChanged(String emailAddressStr) =
      EmailChanged;
  const factory SignUpFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignUpFormEvent.registerWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignUpFormEvent.signUpWithGooglePressed() =
      SignInWithGooglePressed;
}
