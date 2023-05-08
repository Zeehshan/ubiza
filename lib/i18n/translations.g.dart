
/*
 * Generated file. Do not edit.
 *
 * Locales: 1
 * Strings: 34 
 *
 * Built on 2023-05-08 at 20:57 UTC
 */

import 'package:flutter/widgets.dart';

const AppLocale _baseLocale = AppLocale.en;
AppLocale _currLocale = _baseLocale;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale {
	en, // 'en' (base locale, fallback)
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_TranslationsEn _t = _currLocale.translations;
_TranslationsEn get t => _t;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _TranslationsEn of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget.translations;
	}
}

class LocaleSettings {
	LocaleSettings._(); // no constructor

	/// Uses locale of the device, fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale useDeviceLocale() {
		final locale = AppLocaleUtils.findDeviceLocale();
		return setLocale(locale);
	}

	/// Sets locale
	/// Returns the locale which has been set.
	static AppLocale setLocale(AppLocale locale) {
		_currLocale = locale;
		_t = _currLocale.translations;

		// force rebuild if TranslationProvider is used
		_translationProviderKey.currentState?.setLocale(_currLocale);

		return _currLocale;
	}

	/// Sets locale using string tag (e.g. en_US, de-DE, fr)
	/// Fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale setLocaleRaw(String rawLocale) {
		final locale = AppLocaleUtils.parse(rawLocale);
		return setLocale(locale);
	}

	/// Gets current locale.
	static AppLocale get currentLocale {
		return _currLocale;
	}

	/// Gets base locale.
	static AppLocale get baseLocale {
		return _baseLocale;
	}

	/// Gets supported locales in string format.
	static List<String> get supportedLocalesRaw {
		return AppLocale.values
			.map((locale) => locale.languageTag)
			.toList();
	}

	/// Gets supported locales (as Locale objects) with base locale sorted first.
	static List<Locale> get supportedLocales {
		return AppLocale.values
			.map((locale) => locale.flutterLocale)
			.toList();
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils {
	AppLocaleUtils._(); // no constructor

	/// Returns the locale of the device as the enum type.
	/// Fallbacks to base locale.
	static AppLocale findDeviceLocale() {
		final String? deviceLocale = WidgetsBinding.instance.window.locale.toLanguageTag();
		if (deviceLocale != null) {
			final typedLocale = _selectLocale(deviceLocale);
			if (typedLocale != null) {
				return typedLocale;
			}
		}
		return _baseLocale;
	}

	/// Returns the enum type of the raw locale.
	/// Fallbacks to base locale.
	static AppLocale parse(String rawLocale) {
		return _selectLocale(rawLocale) ?? _baseLocale;
	}
}

// context enums

// interfaces generated as mixins

// translation instances

late _TranslationsEn _translationsEn = _TranslationsEn.build();

// extensions for AppLocale

extension AppLocaleExtensions on AppLocale {

	/// Gets the translation instance managed by this library.
	/// [TranslationProvider] is using this instance.
	/// The plural resolvers are set via [LocaleSettings].
	_TranslationsEn get translations {
		switch (this) {
			case AppLocale.en: return _translationsEn;
		}
	}

	/// Gets a new translation instance.
	/// [LocaleSettings] has no effect here.
	/// Suitable for dependency injection and unit tests.
	///
	/// Usage:
	/// final t = AppLocale.en.build(); // build
	/// String a = t.my.path; // access
	_TranslationsEn build() {
		switch (this) {
			case AppLocale.en: return _TranslationsEn.build();
		}
	}

	String get languageTag {
		switch (this) {
			case AppLocale.en: return 'en';
		}
	}

	Locale get flutterLocale {
		switch (this) {
			case AppLocale.en: return const Locale.fromSubtags(languageCode: 'en');
		}
	}
}

extension StringAppLocaleExtensions on String {
	AppLocale? toAppLocale() {
		switch (this) {
			case 'en': return AppLocale.en;
			default: return null;
		}
	}
}

// wrappers

GlobalKey<_TranslationProviderState> _translationProviderKey = GlobalKey<_TranslationProviderState>();

class TranslationProvider extends StatefulWidget {
	TranslationProvider({required this.child}) : super(key: _translationProviderKey);

	final Widget child;

	@override
	_TranslationProviderState createState() => _TranslationProviderState();

	static _InheritedLocaleData of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget;
	}
}

class _TranslationProviderState extends State<TranslationProvider> {
	AppLocale locale = _currLocale;

	void setLocale(AppLocale newLocale) {
		setState(() {
			locale = newLocale;
		});
	}

	@override
	Widget build(BuildContext context) {
		return _InheritedLocaleData(
			locale: locale,
			child: widget.child,
		);
	}
}

class _InheritedLocaleData extends InheritedWidget {
	final AppLocale locale;
	Locale get flutterLocale => locale.flutterLocale; // shortcut
	final _TranslationsEn translations; // store translations to avoid switch call

	_InheritedLocaleData({required this.locale, required Widget child})
		: translations = locale.translations, super(child: child);

	@override
	bool updateShouldNotify(_InheritedLocaleData oldWidget) {
		return oldWidget.locale != locale;
	}
}

// pluralization feature not used

// helpers

final _localeRegex = RegExp(r'^([a-z]{2,8})?([_-]([A-Za-z]{4}))?([_-]?([A-Z]{2}|[0-9]{3}))?$');
AppLocale? _selectLocale(String localeRaw) {
	final match = _localeRegex.firstMatch(localeRaw);
	AppLocale? selected;
	if (match != null) {
		final language = match.group(1);
		final country = match.group(5);

		// match exactly
		selected = AppLocale.values
			.cast<AppLocale?>()
			.firstWhere((supported) => supported?.languageTag == localeRaw.replaceAll('_', '-'), orElse: () => null);

		if (selected == null && language != null) {
			// match language
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.startsWith(language) == true, orElse: () => null);
		}

		if (selected == null && country != null) {
			// match country
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.contains(country) == true, orElse: () => null);
		}
	}
	return selected;
}

// translations

// Path: <root>
class _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build();

	/// Access flat map
	dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	late final Map<String, dynamic> _flatMap = _buildFlatMap();

	late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsButtonEn BUTTON = _TranslationsButtonEn._(_root);
	late final _TranslationsLabelEn LABEL = _TranslationsLabelEn._(_root);
	late final _TranslationsHintEn HINT = _TranslationsHintEn._(_root);
	late final _TranslationsOnBoardingScreenEn ON_BOARDING_SCREEN = _TranslationsOnBoardingScreenEn._(_root);
	late final _TranslationsAuthenticationScreenEn AUTHENTICATION_SCREEN = _TranslationsAuthenticationScreenEn._(_root);
	late final _TranslationsLoginScreenEn LOGIN_SCREEN = _TranslationsLoginScreenEn._(_root);
	late final _TranslationsSignUpScreenEn SIGN_UP_SCREEN = _TranslationsSignUpScreenEn._(_root);
	late final _TranslationsCongratulationScreenEn CONGRATULATION_SCREEN = _TranslationsCongratulationScreenEn._(_root);
	late final _TranslationsLegalEn LEGAL = _TranslationsLegalEn._(_root);
}

// Path: BUTTON
class _TranslationsButtonEn {
	_TranslationsButtonEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get LOG_IN => 'Log In';
	String get SIGN_UP => 'Sign Up';
	String get FORGOT_PASSWORD => 'Forgot Password?';
	String get CONITNUE_TO_APP => 'Continue to app';
	String get SKIP => 'Skip';
}

// Path: LABEL
class _TranslationsLabelEn {
	_TranslationsLabelEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get EMAIL_ID => 'Email ID';
	String get PASSWORD => 'Password';
	String get OR_LOGIN_WITH => 'Or Login with';
	String get OR_SIGN_UP_WITH => 'Or Signup with';
	String get GET_HELP => 'Get Help';
	String get TERMS_OF_SERVICE => 'Terms Of Service';
	String get PRIVACY_POLICY => 'Privacy Policy';
	String get NAME => 'Name';
	String get EMAIL => 'Email';
	String get PHONE_NUMBER => 'Phone number';
	String get ZIP_CODE => 'Zip Code';
}

// Path: HINT
class _TranslationsHintEn {
	_TranslationsHintEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get PASSWORD => 'Enter 8 character password which includes a combination of a capital letter, special characters.';
	String get EMAIL => 'Enter your email';
}

// Path: ON_BOARDING_SCREEN
class _TranslationsOnBoardingScreenEn {
	_TranslationsOnBoardingScreenEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsOnBoardingScreenPageOneEn PAGE_ONE = _TranslationsOnBoardingScreenPageOneEn._(_root);
	late final _TranslationsOnBoardingScreenPageTwoEn PAGE_TWO = _TranslationsOnBoardingScreenPageTwoEn._(_root);
	late final _TranslationsOnBoardingScreenPageThreeEn PAGE_THREE = _TranslationsOnBoardingScreenPageThreeEn._(_root);
}

// Path: AUTHENTICATION_SCREEN
class _TranslationsAuthenticationScreenEn {
	_TranslationsAuthenticationScreenEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TITLE => 'Join Islamly';
	String get SUB_TITLE => 'Log in or create an account to start\nwatching beneficial reminders!';
}

// Path: LOGIN_SCREEN
class _TranslationsLoginScreenEn {
	_TranslationsLoginScreenEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TITLE => 'Login';
	String get SUB_TITLE => 'Lorem ipsum dolor sit amet consectetur.\nMetus eros interdum dignissim diam.';
	String get SIGN_IN_TROUBLE => 'Forgot Email or trouble Signing in?';
}

// Path: SIGN_UP_SCREEN
class _TranslationsSignUpScreenEn {
	_TranslationsSignUpScreenEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get SUB_TITLE => 'Lorem ipsum dolor sit amet consectetur. Metus eros interdum dignissim diam. ';
}

// Path: CONGRATULATION_SCREEN
class _TranslationsCongratulationScreenEn {
	_TranslationsCongratulationScreenEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TITLE => 'Congratulations!!';
	String get SUB_TITLE => 'Lorem ipsum dolor sit amet consectetur. Metus eros interdum dignissim diam. ';
}

// Path: LEGAL
class _TranslationsLegalEn {
	_TranslationsLegalEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsLegalAuthenticationEn AUTHENTICATION = _TranslationsLegalAuthenticationEn._(_root);
}

// Path: ON_BOARDING_SCREEN.PAGE_ONE
class _TranslationsOnBoardingScreenPageOneEn {
	_TranslationsOnBoardingScreenPageOneEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TITLE => 'Connect with\nyour Community.';
	String get SUB_TITLE => 'Share events and community gathering\nto notify the community!';
}

// Path: ON_BOARDING_SCREEN.PAGE_TWO
class _TranslationsOnBoardingScreenPageTwoEn {
	_TranslationsOnBoardingScreenPageTwoEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TITLE => 'Find quality Halal\nproducts.';
	String get SUB_TITLE => 'Shop from islamic owned businesses\nnear you.';
}

// Path: ON_BOARDING_SCREEN.PAGE_THREE
class _TranslationsOnBoardingScreenPageThreeEn {
	_TranslationsOnBoardingScreenPageThreeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TITLE => 'Share your best\nmoments.';
	String get SUB_TITLE => 'Share beautiful moments along with\nreminders!';
}

// Path: LEGAL.AUTHENTICATION
class _TranslationsLegalAuthenticationEn {
	_TranslationsLegalAuthenticationEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get TEXT_ONE => 'By continuing, you agree to our ';
	String get TEXT_TWO => 'and confirm that you have read our';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'BUTTON.LOG_IN': 'Log In',
			'BUTTON.SIGN_UP': 'Sign Up',
			'BUTTON.FORGOT_PASSWORD': 'Forgot Password?',
			'BUTTON.CONITNUE_TO_APP': 'Continue to app',
			'BUTTON.SKIP': 'Skip',
			'LABEL.EMAIL_ID': 'Email ID',
			'LABEL.PASSWORD': 'Password',
			'LABEL.OR_LOGIN_WITH': 'Or Login with',
			'LABEL.OR_SIGN_UP_WITH': 'Or Signup with',
			'LABEL.GET_HELP': 'Get Help',
			'LABEL.TERMS_OF_SERVICE': 'Terms Of Service',
			'LABEL.PRIVACY_POLICY': 'Privacy Policy',
			'LABEL.NAME': 'Name',
			'LABEL.EMAIL': 'Email',
			'LABEL.PHONE_NUMBER': 'Phone number',
			'LABEL.ZIP_CODE': 'Zip Code',
			'HINT.PASSWORD': 'Enter 8 character password which includes a combination of a capital letter, special characters.',
			'HINT.EMAIL': 'Enter your email',
			'ON_BOARDING_SCREEN.PAGE_ONE.TITLE': 'Connect with\nyour Community.',
			'ON_BOARDING_SCREEN.PAGE_ONE.SUB_TITLE': 'Share events and community gathering\nto notify the community!',
			'ON_BOARDING_SCREEN.PAGE_TWO.TITLE': 'Find quality Halal\nproducts.',
			'ON_BOARDING_SCREEN.PAGE_TWO.SUB_TITLE': 'Shop from islamic owned businesses\nnear you.',
			'ON_BOARDING_SCREEN.PAGE_THREE.TITLE': 'Share your best\nmoments.',
			'ON_BOARDING_SCREEN.PAGE_THREE.SUB_TITLE': 'Share beautiful moments along with\nreminders!',
			'AUTHENTICATION_SCREEN.TITLE': 'Join Islamly',
			'AUTHENTICATION_SCREEN.SUB_TITLE': 'Log in or create an account to start\nwatching beneficial reminders!',
			'LOGIN_SCREEN.TITLE': 'Login',
			'LOGIN_SCREEN.SUB_TITLE': 'Lorem ipsum dolor sit amet consectetur.\nMetus eros interdum dignissim diam.',
			'LOGIN_SCREEN.SIGN_IN_TROUBLE': 'Forgot Email or trouble Signing in?',
			'SIGN_UP_SCREEN.SUB_TITLE': 'Lorem ipsum dolor sit amet consectetur. Metus eros interdum dignissim diam. ',
			'CONGRATULATION_SCREEN.TITLE': 'Congratulations!!',
			'CONGRATULATION_SCREEN.SUB_TITLE': 'Lorem ipsum dolor sit amet consectetur. Metus eros interdum dignissim diam. ',
			'LEGAL.AUTHENTICATION.TEXT_ONE': 'By continuing, you agree to our ',
			'LEGAL.AUTHENTICATION.TEXT_TWO': 'and confirm that you have read our',
		};
	}
}
