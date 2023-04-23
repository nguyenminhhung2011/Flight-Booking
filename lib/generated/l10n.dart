// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Search Anything...`
  String get searchAnything {
    return Intl.message(
      'Search Anything...',
      name: 'searchAnything',
      desc: '',
      args: [],
    );
  }

  /// `Add new widgets`
  String get addNewWidgets {
    return Intl.message(
      'Add new widgets',
      name: 'addNewWidgets',
      desc: '',
      args: [],
    );
  }

  /// `All Booking`
  String get allBooking {
    return Intl.message(
      'All Booking',
      name: 'allBooking',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Departure Date`
  String get departureDate {
    return Intl.message(
      'Departure Date',
      name: 'departureDate',
      desc: '',
      args: [],
    );
  }

  /// `Booking type`
  String get bookingType {
    return Intl.message(
      'Booking type',
      name: 'bookingType',
      desc: '',
      args: [],
    );
  }

  /// `Date range`
  String get dateRange {
    return Intl.message(
      'Date range',
      name: 'dateRange',
      desc: '',
      args: [],
    );
  }

  /// `Destination`
  String get destination {
    return Intl.message(
      'Destination',
      name: 'destination',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `People`
  String get people {
    return Intl.message(
      'People',
      name: 'people',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Sale Performance`
  String get salePerformance {
    return Intl.message(
      'Sale Performance',
      name: 'salePerformance',
      desc: '',
      args: [],
    );
  }

  /// `Visited 10 of 100 countries`
  String get visited10Of100Countries {
    return Intl.message(
      'Visited 10 of 100 countries',
      name: 'visited10Of100Countries',
      desc: '',
      args: [],
    );
  }

  /// `Export`
  String get export {
    return Intl.message(
      'Export',
      name: 'export',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Sale`
  String get sale {
    return Intl.message(
      'Sale',
      name: 'sale',
      desc: '',
      args: [],
    );
  }

  /// `Activities`
  String get activities {
    return Intl.message(
      'Activities',
      name: 'activities',
      desc: '',
      args: [],
    );
  }

  /// `Add Plan`
  String get addPlan {
    return Intl.message(
      'Add Plan',
      name: 'addPlan',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `LightMode`
  String get lightMode {
    return Intl.message(
      'LightMode',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `List tickets`
  String get listTicket {
    return Intl.message(
      'List tickets',
      name: 'listTicket',
      desc: '',
      args: [],
    );
  }

  /// `Times`
  String get times {
    return Intl.message(
      'Times',
      name: 'times',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Start From`
  String get startFrom {
    return Intl.message(
      'Start From',
      name: 'startFrom',
      desc: '',
      args: [],
    );
  }

  /// `View Detail`
  String get viewDetail {
    return Intl.message(
      'View Detail',
      name: 'viewDetail',
      desc: '',
      args: [],
    );
  }

  /// `Direct`
  String get direct {
    return Intl.message(
      'Direct',
      name: 'direct',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Please login to use our service`
  String get pleaseLogin {
    return Intl.message(
      'Please login to use our service',
      name: 'pleaseLogin',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `The Service have not finished yet !!!`
  String get theServiceHaveNotFinished {
    return Intl.message(
      'The Service have not finished yet !!!',
      name: 'theServiceHaveNotFinished',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enterYourEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Password`
  String get enterYourPassword {
    return Intl.message(
      'Enter your Password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Remember Information`
  String get rememberInformation {
    return Intl.message(
      'Remember Information',
      name: 'rememberInformation',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get logIn {
    return Intl.message(
      'Log In',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ?`
  String get donHaveAnAccount {
    return Intl.message(
      'Don\'t have an account ?',
      name: 'donHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please ! Contact Administrator to be provided Account!`
  String get pleaseContact {
    return Intl.message(
      'Please ! Contact Administrator to be provided Account!',
      name: 'pleaseContact',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your New Password`
  String get enterYourNewPassword {
    return Intl.message(
      'Enter Your New Password',
      name: 'enterYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create Your New Password`
  String get createYourNewPassword {
    return Intl.message(
      'Create Your New Password',
      name: 'createYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reenter Your Password`
  String get reenterYourPassword {
    return Intl.message(
      'Reenter Your Password',
      name: 'reenterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reenter Password`
  String get reenterPassword {
    return Intl.message(
      'Reenter Password',
      name: 'reenterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Apply New Password`
  String get applyNewPassword {
    return Intl.message(
      'Apply New Password',
      name: 'applyNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter your email to find your account`
  String get pleaseEnterEmailToFindAccount {
    return Intl.message(
      'Please Enter your email to find your account',
      name: 'pleaseEnterEmailToFindAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sent Verification Email`
  String get sentVerificationEmail {
    return Intl.message(
      'Sent Verification Email',
      name: 'sentVerificationEmail',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a verification email to: {email}`
  String weHaveSentAVerification(Object email) {
    return Intl.message(
      'We have sent a verification email to: $email',
      name: 'weHaveSentAVerification',
      desc: '',
      args: [email],
    );
  }

  /// `Flight tickets`
  String get flightTickets {
    return Intl.message(
      'Flight tickets',
      name: 'flightTickets',
      desc: '',
      args: [],
    );
  }

  /// `Passengers`
  String get passengers {
    return Intl.message(
      'Passengers',
      name: 'passengers',
      desc: '',
      args: [],
    );
  }

  /// `Flight`
  String get flight {
    return Intl.message(
      'Flight',
      name: 'flight',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get business {
    return Intl.message(
      'Business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `Class`
  String get class1 {
    return Intl.message(
      'Class',
      name: 'class1',
      desc: '',
      args: [],
    );
  }

  /// `Gate`
  String get gate {
    return Intl.message(
      'Gate',
      name: 'gate',
      desc: '',
      args: [],
    );
  }

  /// `Seat`
  String get seat {
    return Intl.message(
      'Seat',
      name: 'seat',
      desc: '',
      args: [],
    );
  }

  /// `Business Class`
  String get businessClass {
    return Intl.message(
      'Business Class',
      name: 'businessClass',
      desc: '',
      args: [],
    );
  }

  /// `Flight Information`
  String get flightInformation {
    return Intl.message(
      'Flight Information',
      name: 'flightInformation',
      desc: '',
      args: [],
    );
  }

  /// `Driver`
  String get driver {
    return Intl.message(
      'Driver',
      name: 'driver',
      desc: '',
      args: [],
    );
  }

  /// `No Customer`
  String get noCustomer {
    return Intl.message(
      'No Customer',
      name: 'noCustomer',
      desc: '',
      args: [],
    );
  }

  /// `{no} Customer`
  String numberCustomer(Object no) {
    return Intl.message(
      '$no Customer',
      name: 'numberCustomer',
      desc: '',
      args: [no],
    );
  }

  /// `Economy Class`
  String get economyClass {
    return Intl.message(
      'Economy Class',
      name: 'economyClass',
      desc: '',
      args: [],
    );
  }

  /// `Premium Economy Class`
  String get premiumEconomyClass {
    return Intl.message(
      'Premium Economy Class',
      name: 'premiumEconomyClass',
      desc: '',
      args: [],
    );
  }

  /// `First Class`
  String get firstClass {
    return Intl.message(
      'First Class',
      name: 'firstClass',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Boy`
  String get boy {
    return Intl.message(
      'Boy',
      name: 'boy',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `luggage`
  String get luggage {
    return Intl.message(
      'luggage',
      name: 'luggage',
      desc: '',
      args: [],
    );
  }

  /// `Chair`
  String get chair {
    return Intl.message(
      'Chair',
      name: 'chair',
      desc: '',
      args: [],
    );
  }

  /// `Direct Flight `
  String get directFlight {
    return Intl.message(
      'Direct Flight ',
      name: 'directFlight',
      desc: '',
      args: [],
    );
  }

  /// `Flight Detail`
  String get flightDetail {
    return Intl.message(
      'Flight Detail',
      name: 'flightDetail',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `id {id}`
  String idData(Object id) {
    return Intl.message(
      'id $id',
      name: 'idData',
      desc: '',
      args: [id],
    );
  }

  /// `name {name}`
  String nameData(Object name) {
    return Intl.message(
      'name $name',
      name: 'nameData',
      desc: '',
      args: [name],
    );
  }

  /// `address {address}`
  String addressData(Object address) {
    return Intl.message(
      'address $address',
      name: 'addressData',
      desc: '',
      args: [address],
    );
  }

  /// `Customer`
  String get customer {
    return Intl.message(
      'Customer',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Employee`
  String get employee {
    return Intl.message(
      'Employee',
      name: 'employee',
      desc: '',
      args: [],
    );
  }

  /// `{no} Employee`
  String numberEmployee(Object no) {
    return Intl.message(
      '$no Employee',
      name: 'numberEmployee',
      desc: '',
      args: [no],
    );
  }

  /// `Flight attendant`
  String get flightAttendant {
    return Intl.message(
      'Flight attendant',
      name: 'flightAttendant',
      desc: '',
      args: [],
    );
  }

  /// `Cabin crew`
  String get cabinCrew {
    return Intl.message(
      'Cabin crew',
      name: 'cabinCrew',
      desc: '',
      args: [],
    );
  }

  /// `Pilot`
  String get pilot {
    return Intl.message(
      'Pilot',
      name: 'pilot',
      desc: '',
      args: [],
    );
  }

  /// `First Officer`
  String get firstOfficer {
    return Intl.message(
      'First Officer',
      name: 'firstOfficer',
      desc: '',
      args: [],
    );
  }

  /// `Exp`
  String get exp {
    return Intl.message(
      'Exp',
      name: 'exp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
