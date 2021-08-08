// import 'dart:io';
// import 'dart:ui';
//
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart';
//
// class SharedPreferences {
//   Box sharedPref = Hive.box("shared_preferences");
//
//   static Future<Box> initHive() async {
//     Directory appDocumentDir = await getApplicationDocumentsDirectory();
//     Hive.init(appDocumentDir.path);
//     return await Hive.openBox("shared_preferences");
//   }
//
//   static Future clearHive() async =>
//     await Hive.deleteBoxFromDisk("shared_preferences");
//
//
//   Locale? getUserLocale() {
//     String? langCode = sharedPref.get("lang_code");
//     String? countryCode = sharedPref.get("country_code");
//     if (langCode != null && countryCode != null) {
//       return Locale(langCode, countryCode);
//     } else {
//       return null;
//     }
//   }
//
//   Future<void> setUserLocale(Locale locale) async {
//     await sharedPref.put("lang_code", locale.languageCode);
//     await sharedPref.put("country_code", locale.countryCode);
//   }
//
//   String? getTeamId(String gameId) => sharedPref.get(gameId);
//
//   Future<void> setTeamId(String gameId, String teamId) async {
//     await sharedPref.put(gameId, teamId);
//   }
//
//
//   bool? getLeadership(String gameId) => sharedPref.get('$gameId/leadership');
//
//   Future<void> setLeadership(String gameId, bool leadership) async {
//     await sharedPref.put('$gameId/leadership', leadership);
//   }
//
//   DateTime? getPausingStartDateTime() => sharedPref.get('pause_start_date_time');
//
//   Future<void> setPausingStartDateTime(DateTime pauseDateTime) async =>
//       await sharedPref.put("pause_start_date_time", pauseDateTime);
//
//
//   bool? getTheme() => sharedPref.get('theme');
//
//   Future<void> setTheme(bool dark) async {
//     await sharedPref.put('theme', dark);
//   }
//
// }
