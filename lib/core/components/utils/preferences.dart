import 'dart:convert';

import 'package:flight_booking/domain/entities/user/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class CommonAppSettingPref {
  static const String _language = "language";
  static const String _theme = "theme";
  static const String _darkOption = "darkOption";
  static const String _font = "font";
  static const String _tokenPush = "tokenPush";
  static const String _userGenerateDeviceID = "userGenerateDeviceID";

  static const String _useSsl = 'useSsl';
  static const String _userEntity = 'userEntity';

  static const String _domain = 'domain';
  static const String _branch = 'branch';
  static const String _userId = 'userId';

  static const String _securePasword = 'secretAppKey';
  static const String _biometricLogin = 'biometricLogin';

  static Future<bool> setPlainPassword(String password) async {
    return Preferences.setString(_securePasword, password);
  }

  static String getPlainPassword() {
    return Preferences.getString(_securePasword) ?? '';
  }

  static Future<bool> setUseBiometricLogin(bool value) {
    return Preferences.setBool(_biometricLogin, value);
  }

  static bool isUseBiometricLogin() {
    return Preferences.getBool(_biometricLogin);
  }

  static Future<bool> setDomain(String value) {
    return Preferences.setString(_domain, value);
  }

  static String getDomain() {
    return Preferences.getString(_domain) ?? '';
  }

  static Future<bool> setDomainBranch(String value) {
    return Preferences.setString(_branch, value);
  }

  static String getDomainBranch() {
    return Preferences.getString(_branch) ?? '';
  }

  static Future<bool> setUserId(String value) {
    return Preferences.setString(_userId, value);
  }

  static String getUserId() {
    return Preferences.getString(_userId) ?? '';
  }

  static Future<bool> setUseSSL(bool value) {
    return Preferences.setBool(_useSsl, value);
  }

  static bool isUseSSL() {
    return Preferences.getBool(_useSsl, true);
  }

  static Future<String> getUserDeviceID() async {
    String? deviceID = Preferences.getString(_userGenerateDeviceID);
    if (deviceID == null) {
      var uuid = const Uuid();
      deviceID = uuid.v4();
      await Preferences.setString(_userGenerateDeviceID, deviceID);
    }
    return deviceID;
  }

  static Future<bool> setTheme(String themeName) {
    return Preferences.setString(_theme, themeName);
  }

  static String? getTheme() {
    return Preferences.getString(_theme);
  }

  static Future<bool> setFont(String fontName) {
    return Preferences.setString(_font, fontName);
  }

  static String? getFont() {
    return Preferences.getString(_font);
  }

  static Future<bool> setLanguage(String langName) {
    return Preferences.setString(_language, langName);
  }

  static String? getLanguage() {
    return Preferences.getString(_language);
  }

  static Future<bool> setDarkOptions(String darkOption) {
    return Preferences.setString(_darkOption, darkOption);
  }

  static String? getDarkOptions() {
    return Preferences.getString(_darkOption);
  }

  static Future<bool> setTokenPushNotification(String token) {
    return Preferences.setString(_tokenPush, token);
  }

  static String? getTokenPushNotification() {
    return Preferences.getString(_tokenPush);
  }

  static Future<bool> setUserEntity(String user) {
    return Preferences.setString(_userEntity, user);
  }

  static String? getUserEntity() {
    return Preferences.getString(_userEntity);
  }

  CommonAppSettingPref._();
}

class Preferences {
  static late SharedPreferences instance;

  static Future<void> ensureInitedPreferences() async {
    instance = await SharedPreferences.getInstance();
  }

  static bool getBool(String key, [bool def = false]) {
    final value = instance.getBool(key);
    return value ?? def;
  }

  static double getDouble(String key, [double def = 0]) {
    final value = instance.getDouble(key);
    return value ?? def;
  }

  static String? getString(String key) {
    final value = instance.getString(key);
    return value;
  }

  static List<String>? getStringList(String key) {
    final value = instance.getStringList(key);
    return value;
  }

  static Future<bool> remove(String key) {
    return instance.remove(key);
  }

  static Future<bool> setBool(String key, bool value) {
    return instance.setBool(key, value);
  }

  static Future<bool> setDouble(String key, double value) {
    return instance.setDouble(key, value);
  }

  static Future<bool> setInt(String key, int value) {
    return instance.setInt(key, value);
  }

  static Future<bool> setString(String key, String value) {
    return instance.setString(key, value);
  }

  static Future<bool> setStringList(String key, List<String> value) {
    return instance.setStringList(key, value);
  }

  Preferences._();
}
