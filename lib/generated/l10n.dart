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

  /// `List Flights`
  String get listFlights {
    return Intl.message(
      'List Flights',
      name: 'listFlights',
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

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Show more Information`
  String get showMoreInformation {
    return Intl.message(
      'Show more Information',
      name: 'showMoreInformation',
      desc: '',
      args: [],
    );
  }

  /// `Hide Information`
  String get hideInformation {
    return Intl.message(
      'Hide Information',
      name: 'hideInformation',
      desc: '',
      args: [],
    );
  }

  /// `Airport`
  String get airport {
    return Intl.message(
      'Airport',
      name: 'airport',
      desc: '',
      args: [],
    );
  }

  /// `Add New Flight`
  String get addNewFlight {
    return Intl.message(
      'Add New Flight',
      name: 'addNewFlight',
      desc: '',
      args: [],
    );
  }

  /// `Edit Flight`
  String get editFlight {
    return Intl.message(
      'Edit Flight',
      name: 'editFlight',
      desc: '',
      args: [],
    );
  }

  /// `Airport Start`
  String get airportStart {
    return Intl.message(
      'Airport Start',
      name: 'airportStart',
      desc: '',
      args: [],
    );
  }

  /// `Airport Finish`
  String get airportFinish {
    return Intl.message(
      'Airport Finish',
      name: 'airportFinish',
      desc: '',
      args: [],
    );
  }

  /// `Date Start`
  String get dateStart {
    return Intl.message(
      'Date Start',
      name: 'dateStart',
      desc: '',
      args: [],
    );
  }

  /// `Date Finish`
  String get dateFinish {
    return Intl.message(
      'Date Finish',
      name: 'dateFinish',
      desc: '',
      args: [],
    );
  }

  /// `Identity Number`
  String get identityNum {
    return Intl.message(
      'Identity Number',
      name: 'identityNum',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `General Settings`
  String get generalSetting {
    return Intl.message(
      'General Settings',
      name: 'generalSetting',
      desc: '',
      args: [],
    );
  }

  /// `Account Settings`
  String get accountSetting {
    return Intl.message(
      'Account Settings',
      name: 'accountSetting',
      desc: '',
      args: [],
    );
  }

  /// `Rule Settings`
  String get ruleSettings {
    return Intl.message(
      'Rule Settings',
      name: 'ruleSettings',
      desc: '',
      args: [],
    );
  }

  /// `Upload Profile Image`
  String get uploadProfileImage {
    return Intl.message(
      'Upload Profile Image',
      name: 'uploadProfileImage',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Save Change`
  String get saveChange {
    return Intl.message(
      'Save Change',
      name: 'saveChange',
      desc: '',
      args: [],
    );
  }

  /// `Email and Phone Details`
  String get emailPhoneDetail {
    return Intl.message(
      'Email and Phone Details',
      name: 'emailPhoneDetail',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Airport Overview`
  String get airportOverview {
    return Intl.message(
      'Airport Overview',
      name: 'airportOverview',
      desc: '',
      args: [],
    );
  }

  /// `Comming Flights`
  String get commingFlights {
    return Intl.message(
      'Comming Flights',
      name: 'commingFlights',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Image`
  String get image {
    return Intl.message(
      'Image',
      name: 'image',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get actions {
    return Intl.message(
      'Actions',
      name: 'actions',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Add New Airport`
  String get addNewAirport {
    return Intl.message(
      'Add New Airport',
      name: 'addNewAirport',
      desc: '',
      args: [],
    );
  }

  /// `Edit Airport`
  String get editAirport {
    return Intl.message(
      'Edit Airport',
      name: 'editAirport',
      desc: '',
      args: [],
    );
  }

  /// `Pick Image`
  String get pickImage {
    return Intl.message(
      'Pick Image',
      name: 'pickImage',
      desc: '',
      args: [],
    );
  }

  /// `Personal Info`
  String get personalInfo {
    return Intl.message(
      'Personal Info',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Update your avatar and personal information here`
  String get updateYourAvatar {
    return Intl.message(
      'Update your avatar and personal information here',
      name: 'updateYourAvatar',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get yourName {
    return Intl.message(
      'Your Name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Your Photo`
  String get yourPhoto {
    return Intl.message(
      'Your Photo',
      name: 'yourPhoto',
      desc: '',
      args: [],
    );
  }

  /// `This will be display on your profile`
  String get thisWillDisplay {
    return Intl.message(
      'This will be display on your profile',
      name: 'thisWillDisplay',
      desc: '',
      args: [],
    );
  }

  /// `Click to upload`
  String get clickToUpload {
    return Intl.message(
      'Click to upload',
      name: 'clickToUpload',
      desc: '',
      args: [],
    );
  }

  /// ` or drag and drop SVG, PNG, JPG or GIF (max 800x400px)`
  String get orDrag {
    return Intl.message(
      ' or drag and drop SVG, PNG, JPG or GIF (max 800x400px)',
      name: 'orDrag',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Date Born`
  String get dateBorn {
    return Intl.message(
      'Date Born',
      name: 'dateBorn',
      desc: '',
      args: [],
    );
  }

  /// `Update Profile`
  String get updateProfile {
    return Intl.message(
      'Update Profile',
      name: 'updateProfile',
      desc: '',
      args: [],
    );
  }

  /// `Password Settings`
  String get passwordSettings {
    return Intl.message(
      'Password Settings',
      name: 'passwordSettings',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get currentPassword {
    return Intl.message(
      'Current Password',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your current Password`
  String get enterCurrentPassword {
    return Intl.message(
      'Enter your current Password',
      name: 'enterCurrentPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new Password`
  String get enterNewPassword {
    return Intl.message(
      'Enter your new Password',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your retype password`
  String get retypePassword {
    return Intl.message(
      'Enter your retype password',
      name: 'retypePassword',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Principle Setting`
  String get principleSetting {
    return Intl.message(
      'Principle Setting',
      name: 'principleSetting',
      desc: '',
      args: [],
    );
  }

  /// `Number Of Airports`
  String get numberOfAirport {
    return Intl.message(
      'Number Of Airports',
      name: 'numberOfAirport',
      desc: '',
      args: [],
    );
  }

  /// `Maximum Number of Layovers`
  String get maximumNumberOfLayovers {
    return Intl.message(
      'Maximum Number of Layovers',
      name: 'maximumNumberOfLayovers',
      desc: '',
      args: [],
    );
  }

  /// `Flight Time`
  String get flightTime {
    return Intl.message(
      'Flight Time',
      name: 'flightTime',
      desc: '',
      args: [],
    );
  }

  /// `Maximum Flight Time`
  String get maximumFlightTime {
    return Intl.message(
      'Maximum Flight Time',
      name: 'maximumFlightTime',
      desc: '',
      args: [],
    );
  }

  /// `Hours`
  String get hours {
    return Intl.message(
      'Hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get Minutes {
    return Intl.message(
      'Minutes',
      name: 'Minutes',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Flight Time`
  String get minimumFlightTime {
    return Intl.message(
      'Minimum Flight Time',
      name: 'minimumFlightTime',
      desc: '',
      args: [],
    );
  }

  /// `Block Time`
  String get blockTime {
    return Intl.message(
      'Block Time',
      name: 'blockTime',
      desc: '',
      args: [],
    );
  }

  /// `Maximum Block Time`
  String get maximumBlockTime {
    return Intl.message(
      'Maximum Block Time',
      name: 'maximumBlockTime',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Block Time`
  String get minimumBlockTime {
    return Intl.message(
      'Minimum Block Time',
      name: 'minimumBlockTime',
      desc: '',
      args: [],
    );
  }

  /// `Booking Time`
  String get bookingTime {
    return Intl.message(
      'Booking Time',
      name: 'bookingTime',
      desc: '',
      args: [],
    );
  }

  /// `Deadline For Ticket Purchase`
  String get deadlineForTicketPurchase {
    return Intl.message(
      'Deadline For Ticket Purchase',
      name: 'deadlineForTicketPurchase',
      desc: '',
      args: [],
    );
  }

  /// `Deadline For Ticket Cancellation`
  String get deadlineForTicketCancellation {
    return Intl.message(
      'Deadline For Ticket Cancellation',
      name: 'deadlineForTicketCancellation',
      desc: '',
      args: [],
    );
  }

  /// `Plane Ticket`
  String get planeTicket {
    return Intl.message(
      'Plane Ticket',
      name: 'planeTicket',
      desc: '',
      args: [],
    );
  }

  /// `First Class Ticket`
  String get firstClassTicket {
    return Intl.message(
      'First Class Ticket',
      name: 'firstClassTicket',
      desc: '',
      args: [],
    );
  }

  /// `Business Class Ticket`
  String get businessClassTicket {
    return Intl.message(
      'Business Class Ticket',
      name: 'businessClassTicket',
      desc: '',
      args: [],
    );
  }

  /// `Premium Economy Class Ticket`
  String get premiumEconomyClassTicket {
    return Intl.message(
      'Premium Economy Class Ticket',
      name: 'premiumEconomyClassTicket',
      desc: '',
      args: [],
    );
  }

  /// `Economy Class Ticket`
  String get economyClassTicket {
    return Intl.message(
      'Economy Class Ticket',
      name: 'economyClassTicket',
      desc: '',
      args: [],
    );
  }

  /// `List Customer`
  String get listCustomer {
    return Intl.message(
      'List Customer',
      name: 'listCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Number of Ticket`
  String get ticketNumber {
    return Intl.message(
      'Number of Ticket',
      name: 'ticketNumber',
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
