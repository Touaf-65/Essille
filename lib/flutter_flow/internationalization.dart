import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'de'];

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
    String? frText = '',
    String? deText = '',
  }) =>
      [enText, frText, deText][languageIndex] ?? '';

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

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // loginPage
  {
    'i1fmtz78': {
      'en': 'Welcome ',
      'de': '',
      'fr': '',
    },
    '212xqtop': {
      'en': 'Login to access your account below.',
      'de': '',
      'fr': '',
    },
    'y7ya5dp4': {
      'en': 'Email Address',
      'de': '',
      'fr': '',
    },
    'bmz4ik3y': {
      'en': 'Enter your email...',
      'de': '',
      'fr': '',
    },
    's0468zkm': {
      'en': 'Password',
      'de': '',
      'fr': '',
    },
    '369w2j9b': {
      'en': 'Enter your password...',
      'de': '',
      'fr': '',
    },
    'uf8ublmz': {
      'en': 'Forgot Password?',
      'de': '',
      'fr': '',
    },
    '1xrh8c81': {
      'en': 'Login',
      'de': '',
      'fr': '',
    },
    'i0p34m6q': {
      'en': 'Use a social account to login ',
      'de': '',
      'fr': '',
    },
    '0752nrgu': {
      'en': 'Don\'t have an account?',
      'de': '',
      'fr': '',
    },
    'sniztyep': {
      'en': 'Create',
      'de': '',
      'fr': '',
    },
    '1v0ouwl9': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // forgotPassword
  {
    'r1lglais': {
      'en': 'Forgot Password',
      'de': '',
      'fr': '',
    },
    'uzo606a3': {
      'en':
          'Enter the email associated with your account and we will send you a verification code.',
      'de': '',
      'fr': '',
    },
    'vvm6x7rv': {
      'en': 'Email Address',
      'de': '',
      'fr': '',
    },
    'vo7912gh': {
      'en': 'Enter your email...',
      'de': '',
      'fr': '',
    },
    'h69zj1yl': {
      'en': 'Send Reset Link',
      'de': '',
      'fr': '',
    },
    '0oygz1wl': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // registerAccount
  {
    'atj6s6ff': {
      'en': 'Get Started',
      'de': '',
      'fr': '',
    },
    'i6dh1cfm': {
      'en': 'Create your account below.',
      'de': '',
      'fr': '',
    },
    'qmpl1adm': {
      'en': 'Email Address',
      'de': '',
      'fr': '',
    },
    'hyjhtpjj': {
      'en': 'Enter your email...',
      'de': '',
      'fr': '',
    },
    'naxsyvon': {
      'en': 'Password',
      'de': '',
      'fr': '',
    },
    'ge6nwck9': {
      'en': 'Enter your password...',
      'de': '',
      'fr': '',
    },
    'gsdik4nz': {
      'en': 'Confirm Password',
      'de': '',
      'fr': '',
    },
    '2bkwxfwo': {
      'en': 'Enter your password...',
      'de': '',
      'fr': '',
    },
    'hjunhoqu': {
      'en': 'Create Account',
      'de': '',
      'fr': '',
    },
    'bakpbkez': {
      'en': 'Use a social account to continue',
      'de': '',
      'fr': '',
    },
    'jc8smaab': {
      'en': 'Login',
      'de': '',
      'fr': '',
    },
    'y7uy5pmy': {
      'en': 'Already have an account?',
      'de': '',
      'fr': '',
    },
    'a5nnm0oa': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // onboarding
  {
    '14o6odlb': {
      'en': 'Guarantee access\n to drinking water',
      'de': '',
      'fr': '',
    },
    'dlgt8la1': {
      'en':
          'It is a vital resource for the populations, an essential factor of sustainable development behind which Togo has been running for several years.',
      'de': '',
      'fr': '',
    },
    'jmqvsdnq': {
      'en': 'Skip Now',
      'de': '',
      'fr': '',
    },
    '3csyyurx': {
      'en': 'Supply\n in drinking water',
      'de': '',
      'fr': '',
    },
    'lndbxyov': {
      'en':
          'Slowly but surely, Togo is on the way to universal access to water. A round table is being prepared in Lomé in this regard and will contribute to mobilizing technical and financial partners to achieve this objective.',
      'de': '',
      'fr': '',
    },
    'rdnwnrzt': {
      'en': 'Skip',
      'de': '',
      'fr': '',
    },
    'zvbpw54p': {
      'en': 'Drinking Water',
      'de': '',
      'fr': '',
    },
    '6e0od2ja': {
      'en':
          'Togo has insufficient drinking water coverage with only 57% of the population having access to an improved water point.',
      'de': '',
      'fr': '',
    },
    'gmhecidb': {
      'en': 'Let\'s Go',
      'de': '',
      'fr': '',
    },
  },
  // completeProfile
  {
    'tnzv6jur': {
      'en': 'Complete Profile',
      'de': '',
      'fr': '',
    },
    '57gkeycr': {
      'en': 'Set Up your Account',
      'de': '',
      'fr': '',
    },
    'mb816yqd': {
      'en': 'Upload a photo for us to easily identify you.',
      'de': '',
      'fr': '',
    },
    'dxpsqf2l': {
      'en': 'Your Name',
      'de': '',
      'fr': '',
    },
    'epu8reuk': {
      'en': 'Your Age',
      'de': '',
      'fr': '',
    },
    '97opcqtn': {
      'en': 'i.e. 34',
      'de': '',
      'fr': '',
    },
    '4y686brq': {
      'en': 'Your Title',
      'de': '',
      'fr': '',
    },
    '5pnwhhxs': {
      'en': 'What is your position?',
      'de': '',
      'fr': '',
    },
    'ujpl99fd': {
      'en': 'TOGO',
      'de': '',
      'fr': '',
    },
    'arqfl9fh': {
      'en': 'BENIN',
      'de': '',
      'fr': '',
    },
    'k7s3a6yu': {
      'en': 'Please select your Country',
      'de': '',
      'fr': '',
    },
    'cft5br64': {
      'en': 'Complete Profile',
      'de': '',
      'fr': '',
    },
    '2cduvy4v': {
      'en': 'Field is required',
      'de': '',
      'fr': '',
    },
    'gz90ifv6': {
      'en': 'Field is required',
      'de': '',
      'fr': '',
    },
    '1j80d1gc': {
      'en': 'Field is required',
      'de': '',
      'fr': '',
    },
    '51utj01b': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // MY_Card
  {
    'es5z6npa': {
      'en': 'EssiLe',
      'de': '',
      'fr': '',
    },
    'xpgqxrmp': {
      'en': 'SDE',
      'de': '',
      'fr': '',
    },
    'ssqz3rwl': {
      'en': 'Dispo partout 🚛',
      'de': '',
      'fr': '',
    },
    'd0msjwxn': {
      'en': '🗓️ 07jr/07',
      'de': '',
      'fr': '',
    },
    'yshjkzt4': {
      'en': 'WATER POINTS',
      'de': '',
      'fr': '',
    },
    'soo5h4gi': {
      'en': '695/Km*',
      'de': '',
      'fr': '',
    },
    'ajct3ht0': {
      'en': 'Quick Services',
      'de': '',
      'fr': '',
    },
    '7gboxg27': {
      'en': 'Statistics',
      'de': '',
      'fr': '',
    },
    'wyad5esk': {
      'en': 'OnGoing \nProjects',
      'de': '',
      'fr': '',
    },
    '3hovaxko': {
      'en': 'Alert\n ',
      'de': '',
      'fr': '',
    },
    'erz297h5': {
      'en': 'National\n Card',
      'de': '',
      'fr': '',
    },
    'ane47btg': {
      'en': 'Water \nAnd Soil',
      'de': '',
      'fr': '',
    },
    '37j5oci4': {
      'en': 'Community\n Chat',
      'de': '',
      'fr': '',
    },
    'x5qyqpi8': {
      'en': 'Partners',
      'de': '',
      'fr': '',
    },
    'xnvkdxpg': {
      'en': 'Home',
      'de': '',
      'fr': 'Accueil',
    },
  },
  // statistics
  {
    'cuhgmqr8': {
      'en': 'Welcome,',
      'de': '',
      'fr': '',
    },
    't4wa6xjg': {
      'en': 'Check latest statistics',
      'de': '',
      'fr': '',
    },
    'fbp6c0yh': {
      'en': 'Quick Service',
      'de': '',
      'fr': '',
    },
    'x346qthm': {
      'en': 'National Card',
      'de': '',
      'fr': '',
    },
    'kliylkjf': {
      'en': 'Alert',
      'de': '',
      'fr': '',
    },
    'l53pnfa3': {
      'en': 'Chat Box',
      'de': '',
      'fr': '',
    },
    'w4jn5go4': {
      'en': 'Statistics',
      'de': '',
      'fr': '',
    },
    '08ur8ge2': {
      'en': 'Savanna region',
      'de': '',
      'fr': '',
    },
    'e58i4s6f': {
      'en': 'Population',
      'de': '',
      'fr': '',
    },
    '018yx6n8': {
      'en': 'Number of Ponits',
      'de': '',
      'fr': '',
    },
    '53gi7dk1': {
      'en': 'Savanna region',
      'de': '',
      'fr': '',
    },
    'azhghge2': {
      'en': 'Population',
      'de': '',
      'fr': '',
    },
    't7upr2ph': {
      'en': 'Number of Ponits',
      'de': '',
      'fr': '',
    },
    's1i9s3l6': {
      'en': 'EssiLe',
      'de': '',
      'fr': '',
    },
    'jjoyssoy': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // x_region
  {
    'fhfutq4k': {
      'en': 'Sites',
      'de': '',
      'fr': '',
    },
    'verbcvhs': {
      'en': 'Nearby Sites',
      'de': '',
      'fr': '',
    },
    'rigfbrx0': {
      'en': 'Join',
      'de': '',
      'fr': '',
    },
    'el18dcby': {
      'en': 'Site1',
      'de': '',
      'fr': '',
    },
    'rmzgr27c': {
      'en': 'Site Name',
      'de': '',
      'fr': '',
    },
    '611ubuev': {
      'en': 'Join',
      'de': '',
      'fr': '',
    },
    '62eqwtzd': {
      'en': 'Site1',
      'de': '',
      'fr': '',
    },
    '65uae94j': {
      'en': 'Site Name',
      'de': '',
      'fr': '',
    },
    '3imohfel': {
      'en': 'Join',
      'de': '',
      'fr': '',
    },
    'upoxjrtd': {
      'en': 'Site1',
      'de': '',
      'fr': '',
    },
    '77923vwo': {
      'en': 'Site Name',
      'de': '',
      'fr': '',
    },
    'kvtlms1y': {
      'en': 'Join',
      'de': '',
      'fr': '',
    },
    'xbecoe65': {
      'en': 'Site1',
      'de': '',
      'fr': '',
    },
    'lkn3purr': {
      'en': 'Site Name',
      'de': '',
      'fr': '',
    },
    'xhmki9xw': {
      'en': 'Join',
      'de': '',
      'fr': '',
    },
    'ck3e9rr1': {
      'en': 'EssiLe',
      'de': '',
      'fr': '',
    },
    '2tp02xcq': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // itnerary
  {
    'xrhsja70': {
      'en': 'Welcome',
      'de': '',
      'fr': '',
    },
    '5h06kcef': {
      'en': 'Your recent activity is below.',
      'de': '',
      'fr': '',
    },
    '66vt9apj': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // alerts_list
  {
    '1nfu2rky': {
      'en': 'Welcome',
      'de': '',
      'fr': '',
    },
    '6bqcyffr': {
      'en': 'Checkout news and highlights below.',
      'de': '',
      'fr': '',
    },
    'ysl0iafo': {
      'en': '2,493',
      'de': '',
      'fr': '',
    },
    'qhaflgi0': {
      'en': '4',
      'de': '',
      'fr': '',
    },
    'qo2tzsb9': {
      'en': '@username',
      'de': '',
      'fr': '',
    },
    'ht2p4d4j': {
      'en': '2,493',
      'de': '',
      'fr': '',
    },
    'qaz99jce': {
      'en': '4',
      'de': '',
      'fr': '',
    },
    'lfpkjypq': {
      'en':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'de': '',
      'fr': '',
    },
    'qd42yt54': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // national_card
  {
    '84ki97pz': {
      'en': 'Find destinations...',
      'de': '',
      'fr': '',
    },
    '2roz0hws': {
      'en': 'Different Sites',
      'de': '',
      'fr': '',
    },
    'kq93qdub': {
      'en': 'Explore Water Distribution Points\n',
      'de': '',
      'fr': '',
    },
    '0ezd7bmt': {
      'en': 'All water points over the country',
      'de': '',
      'fr': '',
    },
    'lr4e30xp': {
      'en': '4.7',
      'de': '',
      'fr': '',
    },
    '59ii822z': {
      'en': 'Bellagio Italy',
      'de': '',
      'fr': '',
    },
    'qwqa225u': {
      'en': '4.7',
      'de': '',
      'fr': '',
    },
    '4s6tuf96': {
      'en': '\$220 USD',
      'de': '',
      'fr': '',
    },
    'c3612555': {
      'en': 'MAP OF TOGO',
      'de': '',
      'fr': '',
    },
    '5bb743tc': {
      'en': 'All poinits on this map',
      'de': '',
      'fr': '',
    },
  },
  // Add_post
  {
    '4ffn8oi0': {
      'en': 'Post',
      'de': '',
      'fr': '',
    },
    '8uh4v2gh': {
      'en': 'Cancel',
      'de': '',
      'fr': '',
    },
    '4t9x6t2t': {
      'en': 'What ',
      'de': '',
      'fr': '',
    },
    'q3ij723u': {
      'en': 'What do you wan tto share with us ?',
      'de': '',
      'fr': '',
    },
    'ch0dcc06': {
      'en': 'Add Location',
      'de': '',
      'fr': '',
    },
    'lknabwp3': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // alert_details
  {
    'wsgs7rkz': {
      'en': 'Alexandria Smith',
      'de': '',
      'fr': '',
    },
    'h9g0x1ue': {
      'en': '1m ago',
      'de': '',
      'fr': '',
    },
    'vpkbquyc': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      'de': '',
      'fr': '',
    },
    '114bxqy8': {
      'en': '3',
      'de': '',
      'fr': '',
    },
    'wgtgtcoi': {
      'en': 'likes',
      'de': '',
      'fr': '',
    },
    'fsb30dn5': {
      'en': '8',
      'de': '',
      'fr': '',
    },
    'irr8zcj5': {
      'en': 'Comments',
      'de': '',
      'fr': '',
    },
    '85msitzm': {
      'en': 'Randy Alcorn',
      'de': '',
      'fr': '',
    },
    '9qjvwagc': {
      'en':
          'I\'m not really sure about this section here aI think you should do soemthing cool!',
      'de': '',
      'fr': '',
    },
    'schjczv7': {
      'en': 'a min ago',
      'de': '',
      'fr': '',
    },
    'gkj30fs7': {
      'en': 'Sandra Smith',
      'de': '',
      'fr': '',
    },
    'lfqn79s2': {
      'en':
          'I\'m not really sure about this section here aI think you should do soemthing cool!',
      'de': '',
      'fr': '',
    },
    '7o764pp9': {
      'en': 'a min ago',
      'de': '',
      'fr': '',
    },
    '117abmqk': {
      'en': 'Leave comment...',
      'de': '',
      'fr': '',
    },
    'u4xuayn8': {
      'en': 'Leave comment...',
      'de': '',
      'fr': '',
    },
    'rw99fnay': {
      'en': 'Post',
      'de': '',
      'fr': '',
    },
    'bq9qnbhu': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Projects
  {
    '40miuszd': {
      'en': 'ONGOING PROJECTS',
      'de': '',
      'fr': '',
    },
    '0e0ri15p': {
      'en': 'Discover Ongoing Projects in Togo',
      'de': '',
      'fr': '',
    },
    'jmoy6pom': {
      'en': 'Project Two',
      'de': '',
      'fr': '',
    },
    'kmuhy9kx': {
      'en': 'Founder, CEO',
      'de': '',
      'fr': '',
    },
    'kscy9wy8': {
      'en': '..........................',
      'de': '',
      'fr': '',
    },
    'gh8czxab': {
      'en': 'Project',
      'de': '',
      'fr': '',
    },
  },
  // ActiveUsers
  {
    'lthuzjq2': {
      'en': 'Active users',
      'de': '',
      'fr': '',
    },
    '6x643f6i': {
      'en': 'Search for user',
      'de': '',
      'fr': '',
    },
    'tn61sbv3': {
      'en': 'Roc Nabatou',
      'de': '',
      'fr': '',
    },
    'wpvff4zn': {
      'en': 'nabatour1553@gmail.com',
      'de': '',
      'fr': '',
    },
    '4fhmvamk': {
      'en': 'Roc Nabatou',
      'de': '',
      'fr': '',
    },
    '0wb778vz': {
      'en': 'nabatour1553@gmail.com',
      'de': '',
      'fr': '',
    },
    'bvusid21': {
      'en': 'Roc Nabatou',
      'de': '',
      'fr': '',
    },
    'v4dld87p': {
      'en': 'nabatour1553@gmail.com',
      'de': '',
      'fr': '',
    },
    'fs6p1zvd': {
      'en': 'Roc Nabatou',
      'de': '',
      'fr': '',
    },
    'brchw6qp': {
      'en': 'nabatour1553@gmail.com',
      'de': '',
      'fr': '',
    },
    '8g8qj5z8': {
      'en': 'Roc Nabatou',
      'de': '',
      'fr': '',
    },
    'hqx5akn5': {
      'en': 'nabatour1553@gmail.com',
      'de': '',
      'fr': '',
    },
    'a24bg4vz': {
      'en': 'Roc Nabatou',
      'de': '',
      'fr': '',
    },
    'c17qv6hf': {
      'en': 'nabatour1553@gmail.com',
      'de': '',
      'fr': '',
    },
    'jej7gthu': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Chats
  {
    'sl9zvwgl': {
      'en': 'Roc Nabatou',
      'de': '',
      'fr': '',
    },
    'btr2m58g': {
      'en': '@eric',
      'de': '',
      'fr': '',
    },
    '3hpr73r7': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'redm4zrp': {
      'en': '9:07 AM',
      'de': '',
      'fr': '',
    },
    'lw7on033': {
      'en': ' Umbaji',
      'de': '',
      'fr': '',
    },
    'yued0kj2': {
      'en': '09:11 AM ',
      'de': '',
      'fr': '',
    },
    'i42q5toc': {
      'en': '[Some hint text...]',
      'de': '',
      'fr': '',
    },
    'jhab74e5': {
      'en': 'Type your message ...',
      'de': '',
      'fr': '',
    },
    'y4fzhpo5': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // chat_list
  {
    'nbd1ejkn': {
      'en': 'Essile Chat',
      'de': '',
      'fr': '',
    },
    'a2iotk2r': {
      'en': 'Search for user',
      'de': '',
      'fr': '',
    },
    's6tf25u7': {
      'en': 'Active users',
      'de': '',
      'fr': '',
    },
    '95tlvq5x': {
      'en': 'See all',
      'de': '',
      'fr': '',
    },
    'u090ljdb': {
      'en': 'Roc Nabatou',
      'de': '',
      'fr': '',
    },
    'v4tjbu4p': {
      'en': 'Hello dear !!!',
      'de': '',
      'fr': '',
    },
    'c6kppumq': {
      'en': '6:37 PM',
      'de': '',
      'fr': '',
    },
    '8n2k6rl1': {
      'en': 'Raoul Kivi',
      'de': '',
      'fr': '',
    },
    '6ef0eccs': {
      'en': 'Need some ...',
      'de': '',
      'fr': '',
    },
    'osw5f7jq': {
      'en': '6:30 PM',
      'de': '',
      'fr': '',
    },
    'lmlr8sws': {
      'en': 'Arris Piralli',
      'de': '',
      'fr': '',
    },
    'u99ke7nm': {
      'en': 'Working on it',
      'de': '',
      'fr': '',
    },
    'naizfaec': {
      'en': '5:59 PM',
      'de': '',
      'fr': '',
    },
    '79gxyhlf': {
      'en': 'Justin Bakoubolo',
      'de': '',
      'fr': '',
    },
    'cymdtf6f': {
      'en': 'Here\'s the AUV ',
      'de': '',
      'fr': '',
    },
    's13jp84l': {
      'en': 'Yesterday',
      'de': '',
      'fr': '',
    },
    'jporvzmx': {
      'en': 'Touaf',
      'de': '',
      'fr': '',
    },
    'dknfzj8y': {
      'en': 'Satisfy population',
      'de': '',
      'fr': '',
    },
    '34gpqffz': {
      'en': '9  March',
      'de': '',
      'fr': '',
    },
    'wk906ogb': {
      'en': '2',
      'de': '',
      'fr': '',
    },
    'p7bixz3e': {
      'en': 'Diya Tchackey',
      'de': '',
      'fr': '',
    },
    'uecoxlpc': {
      'en': 'Love Essile App',
      'de': '',
      'fr': '',
    },
    'dkldcbyc': {
      'en': '8 March',
      'de': '',
      'fr': '',
    },
    'eenhqcah': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Profile
  {
    'ma6ceftk': {
      'en': 'LOG OUT',
      'de': '',
      'fr': '',
    },
    'oefgbgou': {
      'en': 'Account',
      'de': '',
      'fr': '',
    },
    '1hr3khew': {
      'en': 'Payment Options',
      'de': '',
      'fr': '',
    },
    'hzyo7910': {
      'en': 'Country',
      'de': '',
      'fr': '',
    },
    'wi8wcdzf': {
      'en': 'Notification Settings',
      'de': '',
      'fr': '',
    },
    '1oq2z603': {
      'en': 'Edit Profile',
      'de': '',
      'fr': '',
    },
    'dhj186or': {
      'en': 'General',
      'de': '',
      'fr': '',
    },
    'x40pq1j5': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    'ksyp04gl': {
      'en': 'Terms of Service',
      'de': '',
      'fr': '',
    },
    'ksocxxxl': {
      'en': 'Invite Friends',
      'de': '',
      'fr': '',
    },
    'gckehie0': {
      'en': 'Switch to Light/Dark Mode',
      'de': '',
      'fr': '',
    },
    'yut90mml': {
      'en': 'Profile',
      'de': '',
      'fr': '',
    },
    'ofosb75r': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Chat_Onboarding
  {
    'c2vm9p5z': {
      'en': 'Welcome to Essile\'s  Chat',
      'de': '',
      'fr': '',
    },
    'k25zje0r': {
      'en': 'Discuss  and bring out Solutions\n             to Water Problems',
      'de': '',
      'fr': '',
    },
    'b6vfpqb3': {
      'en': 'Let\'s Start',
      'de': '',
      'fr': '',
    },
  },
  // PhoneSignIn
  {
    '1zyp76bx': {
      'en': 'Welcome to Essile',
      'de': '',
      'fr': '',
    },
    '615smzs7': {
      'en': 'Phone Sign In',
      'de': '',
      'fr': '',
    },
    'anma1q64': {
      'en': 'Your Phone Number...',
      'de': '',
      'fr': '',
    },
    'xflc7z40': {
      'en': '+228 92042056',
      'de': '',
      'fr': '',
    },
    'h12ln6ob': {
      'en': 'Sign In',
      'de': '',
      'fr': '',
    },
    '6h62e0ss': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // SMSVerificationPage
  {
    '7nwkrzi3': {
      'en': 'SMS Verification Code',
      'de': '',
      'fr': '',
    },
    '9vltcsze': {
      'en': 'Your Verification code...',
      'de': '',
      'fr': '',
    },
    '1q2a5uou': {
      'en': 'Confirm',
      'de': '',
      'fr': '',
    },
    '3y99cq0p': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Edit_profile
  {
    '4ldj0d2s': {
      'en': 'Change Cover Photo',
      'de': '',
      'fr': '',
    },
    'voou6s1e': {
      'en': 'Edit Photo',
      'de': '',
      'fr': '',
    },
    'cyqbor7c': {
      'en': 'Email Address',
      'de': '',
      'fr': '',
    },
    'l0kyegty': {
      'en': 'Your Name',
      'de': '',
      'fr': '',
    },
    'ut14yuq8': {
      'en': 'Save Changes',
      'de': '',
      'fr': '',
    },
    '9jrof200': {
      'en': 'Edit Profile',
      'de': '',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    't8kj8w0s': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'ojoucjtn': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'o2r32i1l': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'ot2gluvj': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'w1h3f09h': {
      'en': 'Autorize',
      'de': '',
      'fr': '',
    },
    '7hxa31ln': {
      'en': 'Allow ',
      'de': '',
      'fr': '',
    },
    '1nmqom8h': {
      'en': 'Enable this app to send notifications on your phone',
      'de': '',
      'fr': '',
    },
    'xmo877x4': {
      'en': 'Use your  biometrics for authentication',
      'de': '',
      'fr': '',
    },
    'i6innjsf': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'lz02xxs1': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'lhubdxyb': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'a3byunjs': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'b30yivl8': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'dwcg4zk7': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'cqe5w6rs': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'jt36ydo3': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'bvr77rr9': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'b6o74bzr': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'etpjgrd6': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'e9u3zbz8': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'k8zmmr80': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'kmfqr1cl': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'rr8j0847': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'tsvbik12': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'mekbezaq': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'h7cfx6ih': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '77234izl': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'ql0knmym': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'u80u3p8p': {
      'en': '',
      'de': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
