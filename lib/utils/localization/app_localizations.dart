import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pl'),
    Locale('ru')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Memento'**
  String get appTitle;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to'**
  String get welcome;

  /// No description provided for @welcomeSecond.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcomeSecond;

  /// No description provided for @firstIntroSlide.
  ///
  /// In en, this message translates to:
  /// **'Preserve the memory of your loved ones in a digital archive where they will be protected from the destructive effects of time.'**
  String get firstIntroSlide;

  /// No description provided for @secondIntroSlide.
  ///
  /// In en, this message translates to:
  /// **'Immerse yourself in cherished memories with photos and videos collected on the memory page at any time.'**
  String get secondIntroSlide;

  /// No description provided for @thirdIntroSlide.
  ///
  /// In en, this message translates to:
  /// **'Create unique QR codes to share with your loved ones.'**
  String get thirdIntroSlide;

  /// No description provided for @forthIntroSlide.
  ///
  /// In en, this message translates to:
  /// **'Get personalized recommendations and advice.'**
  String get forthIntroSlide;

  /// No description provided for @introNextButton.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get introNextButton;

  /// No description provided for @introSkipButton.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get introSkipButton;

  /// No description provided for @introBeginButton.
  ///
  /// In en, this message translates to:
  /// **'Begin'**
  String get introBeginButton;

  /// No description provided for @authRegistration.
  ///
  /// In en, this message translates to:
  /// **'Registration'**
  String get authRegistration;

  /// No description provided for @authCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get authCreateAccount;

  /// No description provided for @authLogIn.
  ///
  /// In en, this message translates to:
  /// **'Log in to your account'**
  String get authLogIn;

  /// No description provided for @authForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get authForgotPassword;

  /// No description provided for @authForgotPassword2.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry, we\'re here to help you quickly and easily regain access to your account'**
  String get authForgotPassword2;

  /// No description provided for @authForgotPasswordRecover.
  ///
  /// In en, this message translates to:
  /// **'Recover'**
  String get authForgotPasswordRecover;

  /// No description provided for @resetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your email'**
  String get resetPasswordTitle;

  /// No description provided for @resetPasswordText.
  ///
  /// In en, this message translates to:
  /// **'To confirm your email address, please follow the link in the email we sent to '**
  String get resetPasswordText;

  /// No description provided for @resetPasswordCheckEmail.
  ///
  /// In en, this message translates to:
  /// **'Check email'**
  String get resetPasswordCheckEmail;

  /// No description provided for @authUserTerms.
  ///
  /// In en, this message translates to:
  /// **'By continuing, you confirm your consent to the processing of personal data'**
  String get authUserTerms;

  /// No description provided for @authUserTermsError.
  ///
  /// In en, this message translates to:
  /// **'Your consent is required'**
  String get authUserTermsError;

  /// No description provided for @authViaGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get authViaGoogle;

  /// No description provided for @authViaApple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get authViaApple;

  /// No description provided for @authGetStartedActionButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get authGetStartedActionButtonTitle;

  /// No description provided for @authUsername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get authUsername;

  /// No description provided for @authUsernameIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please enter a username'**
  String get authUsernameIsEmpty;

  /// No description provided for @authEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get authEmail;

  /// No description provided for @authEmailIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get authEmailIsEmpty;

  /// No description provided for @authPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get authPassword;

  /// No description provided for @authPasswordIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please enter a password'**
  String get authPasswordIsEmpty;

  /// No description provided for @authEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get authEmailInvalid;

  /// No description provided for @accountExists.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get accountExists;

  /// No description provided for @accountExistsEnter.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get accountExistsEnter;

  /// No description provided for @registerAccount.
  ///
  /// In en, this message translates to:
  /// **'Register a new account!'**
  String get registerAccount;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get register;

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get logIn;

  /// No description provided for @memoryPageScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Memory Pages'**
  String get memoryPageScreenTitle;

  /// No description provided for @memoryPageScreenEmpty.
  ///
  /// In en, this message translates to:
  /// **'Created memory pages will appear here'**
  String get memoryPageScreenEmpty;

  /// No description provided for @memoryPageScreenNew.
  ///
  /// In en, this message translates to:
  /// **'+ New Page'**
  String get memoryPageScreenNew;

  /// No description provided for @qrScannerScreenQuote.
  ///
  /// In en, this message translates to:
  /// **'Point the camera at the QR code you want to scan'**
  String get qrScannerScreenQuote;

  /// No description provided for @mdScreenInformation.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get mdScreenInformation;

  /// No description provided for @mdScreenAddPhoto.
  ///
  /// In en, this message translates to:
  /// **'Select Photo'**
  String get mdScreenAddPhoto;

  /// No description provided for @mdScreenFirstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get mdScreenFirstName;

  /// No description provided for @mdScreenFirstNameError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a first name'**
  String get mdScreenFirstNameError;

  /// No description provided for @mdScreenSecondName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get mdScreenSecondName;

  /// No description provided for @mdScreenSecondNameError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a last name'**
  String get mdScreenSecondNameError;

  /// No description provided for @mdScreenThirdName.
  ///
  /// In en, this message translates to:
  /// **'Middle Name'**
  String get mdScreenThirdName;

  /// No description provided for @mdScreenThirdNameError.
  ///
  /// In en, this message translates to:
  /// **'Please enter a middle name'**
  String get mdScreenThirdNameError;

  /// No description provided for @mdScreenBirthDate.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get mdScreenBirthDate;

  /// No description provided for @mdScreenDeathDate.
  ///
  /// In en, this message translates to:
  /// **'Date of Death'**
  String get mdScreenDeathDate;

  /// No description provided for @mdScreenDateHint.
  ///
  /// In en, this message translates to:
  /// **'dd/mm/yyyy'**
  String get mdScreenDateHint;

  /// No description provided for @mdScreenEpitaphy.
  ///
  /// In en, this message translates to:
  /// **'Epitaph'**
  String get mdScreenEpitaphy;

  /// No description provided for @mdScreenEpitaphyHint.
  ///
  /// In en, this message translates to:
  /// **'In heart and memory'**
  String get mdScreenEpitaphyHint;

  /// No description provided for @mdScreenBiography.
  ///
  /// In en, this message translates to:
  /// **'Biography'**
  String get mdScreenBiography;

  /// No description provided for @mdScreenBiographyEmpty.
  ///
  /// In en, this message translates to:
  /// **'Biography is empty'**
  String get mdScreenBiographyEmpty;

  /// No description provided for @mdScreenPrivatePage.
  ///
  /// In en, this message translates to:
  /// **'Private Page'**
  String get mdScreenPrivatePage;

  /// No description provided for @mdScreenPrivatePageInfo.
  ///
  /// In en, this message translates to:
  /// **'Set a 4-digit password'**
  String get mdScreenPrivatePageInfo;

  /// No description provided for @mdScreenMedia.
  ///
  /// In en, this message translates to:
  /// **'Media Files'**
  String get mdScreenMedia;

  /// No description provided for @mdScreenPhoto.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get mdScreenPhoto;

  /// No description provided for @mdScreenPhotoEmpty.
  ///
  /// In en, this message translates to:
  /// **'No photos'**
  String get mdScreenPhotoEmpty;

  /// No description provided for @mdScreenVideo.
  ///
  /// In en, this message translates to:
  /// **'Videos'**
  String get mdScreenVideo;

  /// No description provided for @mdScreenVideoEmpty.
  ///
  /// In en, this message translates to:
  /// **'No videos'**
  String get mdScreenVideoEmpty;

  /// No description provided for @mdScreenCreate.
  ///
  /// In en, this message translates to:
  /// **'Create Page'**
  String get mdScreenCreate;

  /// No description provided for @mdScreenChange.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get mdScreenChange;

  /// No description provided for @mdScreenPreview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get mdScreenPreview;

  /// No description provided for @mdScreenDeletionTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Page?'**
  String get mdScreenDeletionTitle;

  /// No description provided for @mdScreenDeletionAgreement.
  ///
  /// In en, this message translates to:
  /// **'Yes, delete'**
  String get mdScreenDeletionAgreement;

  /// No description provided for @mdScreenDeletionText.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this page and all media?'**
  String get mdScreenDeletionText;

  /// No description provided for @mdScreenCreation.
  ///
  /// In en, this message translates to:
  /// **'Page creation'**
  String get mdScreenCreation;

  /// No description provided for @mdScreenEditing.
  ///
  /// In en, this message translates to:
  /// **'Page editing'**
  String get mdScreenEditing;

  /// No description provided for @mdScreenDeskCreated.
  ///
  /// In en, this message translates to:
  /// **'Memory page created.'**
  String get mdScreenDeskCreated;

  /// No description provided for @mdScreenDeskEdited.
  ///
  /// In en, this message translates to:
  /// **'Memory page edited.'**
  String get mdScreenDeskEdited;

  /// No description provided for @drawerAboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get drawerAboutUs;

  /// No description provided for @aboutUsDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Developed by Maksim Kuptsov'**
  String get aboutUsDeveloper;

  /// No description provided for @aboutUsDesigner.
  ///
  /// In en, this message translates to:
  /// **'UI/UX by Kristina Gavrilova'**
  String get aboutUsDesigner;

  /// No description provided for @drawerSupport.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get drawerSupport;

  /// No description provided for @supportInfo.
  ///
  /// In en, this message translates to:
  /// **'If you encounter bugs or want to leave feedback or suggestions, you can do so in the app store comments section, or here:'**
  String get supportInfo;

  /// No description provided for @drawerSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get drawerSettings;

  /// No description provided for @settingsChangeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language:'**
  String get settingsChangeLanguage;

  /// No description provided for @settingsChangeTheme.
  ///
  /// In en, this message translates to:
  /// **'Change Theme:'**
  String get settingsChangeTheme;

  /// No description provided for @settingsDarkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsDarkTheme;

  /// No description provided for @settingsLightTheme.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsLightTheme;

  /// No description provided for @settingsDeleteData.
  ///
  /// In en, this message translates to:
  /// **'Delete Data'**
  String get settingsDeleteData;

  /// No description provided for @settingsDataDeletionInfo.
  ///
  /// In en, this message translates to:
  /// **'Data will be deleted and cannot be recovered. Are you sure?'**
  String get settingsDataDeletionInfo;

  /// No description provided for @settingsDataDeletionConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm Deletion'**
  String get settingsDataDeletionConfirm;

  /// No description provided for @drawerLogOut.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get drawerLogOut;

  /// No description provided for @russianLanguage.
  ///
  /// In en, this message translates to:
  /// **'RU'**
  String get russianLanguage;

  /// No description provided for @englishLanguage.
  ///
  /// In en, this message translates to:
  /// **'EN'**
  String get englishLanguage;

  /// No description provided for @belarusianLanguage.
  ///
  /// In en, this message translates to:
  /// **'BY'**
  String get belarusianLanguage;

  /// No description provided for @polishLanguage.
  ///
  /// In en, this message translates to:
  /// **'PL'**
  String get polishLanguage;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @ready.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get ready;

  /// No description provided for @permissionTitle.
  ///
  /// In en, this message translates to:
  /// **'Permission to access media'**
  String get permissionTitle;

  /// No description provided for @permissionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Permission to access media must be granted to use this feature. Would you like to go to the app settings to grant permission?'**
  String get permissionSubtitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pl', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pl':
      return AppLocalizationsPl();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
