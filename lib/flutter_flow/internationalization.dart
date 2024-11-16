import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'tr', 'sv', 'ko', 'de'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? trText = '',
    String? svText = '',
    String? koText = '',
    String? deText = '',
  }) =>
      [enText, trText, svText, koText, deText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // mainDashboard
  {
    'eecb219w': {
      'en': 'THUR 01 AUG',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '2abnibds': {
      'en': 'Hi, ',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '0zfxr3xr': {
      'en': 'Anthony',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ves46rd3': {
      'en': 'My routines',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ja3obmm5': {
      'en': 'Manage your routine, generate plans & track  progress',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'fhtsc931': {
      'en': 'Today\'s Routine',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'k0jasow4': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'u1qc18v8': {
      'en': 'view all >',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '2df9p9p2': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'qk6m10g4': {
      'en': 'MON',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'mitgp9l8': {
      'en': '11',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'fztihl84': {
      'en': 'TUE',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '3zu509l0': {
      'en': '12',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'mqomizpw': {
      'en': 'WED',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'cfoslsuh': {
      'en': '13',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ktv737r1': {
      'en': 'THU',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ziued7vt': {
      'en': '14',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'kepqf25i': {
      'en': 'FRI',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'e3n91aja': {
      'en': '15',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'z6rf315h': {
      'en': 'SAT',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'j5w8rboe': {
      'en': '15',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '7zcv38ku': {
      'en': 'SUNN',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '3ofmfy3t': {
      'en': '16',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'tvu0vw1j': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // auth_WelcomeScreen
  {
    'zfp7sf0k': {
      'en': 'Welcome to Melita',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '5xtfftpt': {
      'en': 'Your Personal Care Journey Starts Here',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'y15xb2di': {
      'en': 'Get Started',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'lc2zzpg1': {
      'en': 'Personalized Just for You',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'gy5h52jr': {
      'en': 'Tell us about yourself and your goals.',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ydfxe1zl': {
      'en': 'Get Started',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '9u7bcv7g': {
      'en': 'Let’s Get you Started!',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'oxddvv9o': {
      'en': 'Join us and take the first step towards better \npersonal care',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'fnbjz2qt': {
      'en': 'Get Started',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'bhav2gkg': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // auth_Create
  {
    'v553e4uq': {
      'en': 'Create Your Account',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'bni5e3k1': {
      'en': 'Let’s get you set up',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'edm2v1s3': {
      'en': 'Name',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'vaibzwj9': {
      'en': 'Email',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'isiyu8bk': {
      'en': 'Password',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'xh5kv4vm': {
      'en': 'Confirm Password',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'n80su88s': {
      'en': 'Create Account',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'j6l1ymqh': {
      'en': 'Or',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'fhafwt80': {
      'en': 'Login to existing account',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ifoumqwm': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // auth_Login
  {
    'xau8xsre': {
      'en': 'Welcome Back!',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '3rpuu3gk': {
      'en': 'Login to continue your personal care journey',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '6e8hxga0': {
      'en': 'Email Address',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'pkaku94r': {
      'en': 'Password',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'f65sqxvz': {
      'en': 'Forgot Password?',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ai09hvyz': {
      'en': 'Log In',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'uletddmw': {
      'en': 'Or',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'zeampbp5': {
      'en': 'Create new account',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'fye9du44': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // auth_ForgotPassword
  {
    'xg1w0ifn': {
      'en': 'Forgot Password',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'tyh9uv3b': {
      'en': 'We will send you a reset link.',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'wqjs5m9n': {
      'en': 'Email Address',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'cabt0g9x': {
      'en': 'Send Link',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '8u2uhyfk': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // Routines
  {
    's5cw5uzm': {
      'en': 'Routines & History',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'kg9bjaxz': {
      'en': 'MON',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '1j174sf9': {
      'en': '10',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'f6dxpmv1': {
      'en': 'TUE',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'd5l2kop1': {
      'en': '11',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'iref9bwl': {
      'en': 'WED',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'wqvuxzyf': {
      'en': '12',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'pygfd5ux': {
      'en': 'THU',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '8fvgkgdl': {
      'en': '13',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'igxgq9z5': {
      'en': 'FRI',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'kj6osv2n': {
      'en': '14',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'uizcp9ys': {
      'en': 'SAT',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'u4tp6k2t': {
      'en': '15',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '5g8njmkk': {
      'en': 'SUNN',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'l61ml12l': {
      'en': '16',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '88em7fu4': {
      'en': 'Ongoing',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'zmezfm3e': {
      'en': 'Daily',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'v6ibtuif': {
      'en': 'Gizem\'s hair ',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'f14q7m1o': {
      'en': 'Routine note',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '8gql906b': {
      'en': 'My skin care',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'y34jmrao': {
      'en': 'Routine note',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'b4z9gwr0': {
      'en': 'Weekly',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'wfol9pvf': {
      'en': 'Aerobics',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ajtb5vqv': {
      'en': 'Routine note',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'gbctf5xn': {
      'en': 'Custom',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '9e46zye9': {
      'en': 'Nail treatment',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'gggwn3t6': {
      'en': 'Routine note',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'azyknvl9': {
      'en': 'Completed',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'k0ytwrmh': {
      'en': 'Your Routine History',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'lktrqn8u': {
      'en': 'Review your past routines and progress',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'abeck8c9': {
      'en': 'Gizem\'s hair ',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'tjvyvy6v': {
      'en': 'Routine note',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '6df9g5s7': {
      'en': 'My skin care',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'aga8v6nn': {
      'en': 'Routine note',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'vzfis4bq': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // addRoutines2
  {
    '1y9bge0f': {
      'en': 'Create Your Routine',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'i8f2kvvd': {
      'en': 'Select a category to create or view routines.',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'v3mmjw8x': {
      'en': 'Routine Name',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'xo9j6j84': {
      'en': 'Enter routine name',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '028gd2h6': {
      'en': 'Set Frequency',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'mj0nm9kk': {
      'en': 'Daily',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'xa5prabq': {
      'en': 'Weekly',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '8jixs9ss': {
      'en': 'Custom',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'cb6pf1mt': {
      'en': 'Monday',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'no0d8wle': {
      'en': 'Tuesday',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'l6i6se0y': {
      'en': 'Wednesday',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'fvir1ob2': {
      'en': 'Thursday',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '5fcrvyth': {
      'en': 'Friday',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'nztqnjyj': {
      'en': 'Saturday',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'jhbgzyhb': {
      'en': 'Sunday',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '1389hd73': {
      'en': 'Set Time',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'zj4ivpa9': {
      'en': '01:00',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'dikt5on6': {
      'en': '02:00',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ci3f2oi6': {
      'en': '03:00',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '1ts0oubm': {
      'en': '04:00',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '14df3jnm': {
      'en': '05:00',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'yux84yn9': {
      'en': '06:00',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'vnlswt4n': {
      'en': 'Select time',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'mu08by9l': {
      'en': 'Search...',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'djr17zys': {
      'en': 'Add a Reminder',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '9x2p9pzy': {
      'en': 'Add Routine',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'h4ekml4v': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // addRoutine1
  {
    'srnurw0v': {
      'en': 'CHOOSE TYPE ',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ehjx8r0p': {
      'en': 'Select a category to create or view routines',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'zaujproa': {
      'en': 'Beauty:',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'xrc2q6g2': {
      'en': 'Skin & Face',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '225s92ch': {
      'en': 'Hair',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'h8l8opf0': {
      'en': 'Nails',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'k1dgn8p8': {
      'en': 'Hands & Feet',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '7qw7d68t': {
      'en': 'Lashes',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'u39ts8lq': {
      'en': 'Eyebrows',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '646m9twm': {
      'en': 'Selfcare:',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'x5y7tqr6': {
      'en': 'Workout',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'sfo1vi4q': {
      'en': 'Meal Preps',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '5yp5i1nx': {
      'en': 'Supplements',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'oni7t0m5': {
      'en': 'Continue',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'u5cg1el7': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // melitaAIWorking
  {
    'm2o0vm3b': {
      'en': 'Perfect! ',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '4sfs9wqz': {
      'en': 'Your new plan is ready',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'lyci3rwc': {
      'en': 'Proceed',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ixkvbnji': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // RoutineSingle
  {
    'yjjgga13': {
      'en': 'Routines title',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'fng9wckg': {
      'en': 'MON',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'gcxw5xln': {
      'en': '10',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'txq12zcz': {
      'en': 'TUE',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'wkvslc9p': {
      'en': '11',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'grh2wzpl': {
      'en': 'WED',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ksoba2fq': {
      'en': '12',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ijno3itq': {
      'en': 'THU',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'lrgty00x': {
      'en': '13',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ofydbph5': {
      'en': 'FRI',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ikgy1my8': {
      'en': '14',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '6t6to4nc': {
      'en': 'SAT',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '8snvunp6': {
      'en': '15',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'a03oe93k': {
      'en': 'SUNN',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'xnl2fxb1': {
      'en': '16',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '54vhgagn': {
      'en': 'Steps',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'qb0yne8o': {
      'en': 'steps to complete your routine',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '0bbobfkm': {
      'en': 'Products',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'orrti465': {
      'en': 'Recommended products',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'g8k4rm72': {
      'en': 'Notes',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ih6v5mop': {
      'en': 'Add your own notes',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'lkm9215o': {
      'en': 'Mark as Complete',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'v8ozaxya': {
      'en': 'Cancel',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '05wfwh05': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // Profile
  {
    '8p8ur08u': {
      'en': 'Profile',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'pt2whkz4': {
      'en': 'View and edit your profile details',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'n5lwq69q': {
      'en': 'Anthony Jnr Ahiable',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'jv3qeb6g': {
      'en': 'andrea@anthony.com',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    're3cfq81': {
      'en': '75%',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ox16tx59': {
      'en': 'Your daily goals almost done!',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    's20j00md': {
      'en': '3 of 4 completed',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'c5w1gl5x': {
      'en': 'Update personal information',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'klz1e8mx': {
      'en': 'Manage your account and preferences',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '3p2rutzs': {
      'en': 'Change Password',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'rehv86xk': {
      'en': 'Change or reset your Melita password',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '4hogzdng': {
      'en': 'Help & Support',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '9pww69h8': {
      'en': 'Need help? Get support here',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'i02gvdu4': {
      'en': 'Logout',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'eny8z4sa': {
      'en': '__',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // congrats
  {
    'n5ouscqx': {
      'en': 'Congratulations!',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'zi372s5x': {
      'en': 'Your Personal Care Journey Starts Now',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'axm7vzen': {
      'en': 'Go to Dashboard',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'fynxyngx': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // CurvedNavBar
  {
    'b1fxbqw5': {
      'en': 'Home',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'pui7acgk': {
      'en': 'Routines',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'hboa82w3': {
      'en': 'Focus',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '4g58ydyb': {
      'en': 'Profile',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // MelitaIntelligence
  {
    'kroouk7d': {
      'en': 'Generate New Plan',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '5zafgm0x': {
      'en': 'Let Melita Intelligence create a personalized plan for you',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'i0scv26o': {
      'en': 'Generate Plan',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'aw4ghqzt': {
      'en': 'Cancel or Later',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // MelitaIntelligenceAddRoutine
  {
    '3ar7vlqu': {
      'en': 'Generate Your Plan',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'aw4i2wjo': {
      'en': 'Let Melita Intelligence create a personalized plan for you',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'll3bj4za': {
      'en': 'Generate Plan',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'atoadilz': {
      'en': 'Cancel & skip',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
  // Miscellaneous
  {
    '64fddicn': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'iidi6bkq': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'cf9t763v': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '10ng8cfq': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'xghveelo': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'gnu538wo': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'grzwnmsc': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'p3205g5q': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'jzh3fsaf': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '2z2qcyht': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '9n76osnm': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'kqo5hltf': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '71uog1hf': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '7e5aomky': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'w21t930y': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'cpq77clf': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'q4igghif': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'un696l17': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'hnmvf0o6': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '6uuuvoqg': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'mbpufiht': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '0ujbep21': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'ag5qv22k': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    '21m8a7ke': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
    'mju6ym7r': {
      'en': '',
      'de': '',
      'ko': '',
      'sv': '',
      'tr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
