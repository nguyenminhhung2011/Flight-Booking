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

  /// `Flight Chart view`
  String get flightChartView {
    return Intl.message(
      'Flight Chart view',
      name: 'flightChartView',
      desc: '',
      args: [],
    );
  }

  /// `Customer Chart view`
  String get customerChartView {
    return Intl.message(
      'Customer Chart view',
      name: 'customerChartView',
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

  /// `Total Customer`
  String get totalCustomer {
    return Intl.message(
      'Total Customer',
      name: 'totalCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Total Airport`
  String get totalAirport {
    return Intl.message(
      'Total Airport',
      name: 'totalAirport',
      desc: '',
      args: [],
    );
  }

  /// `Total Flight`
  String get totalFlight {
    return Intl.message(
      'Total Flight',
      name: 'totalFlight',
      desc: '',
      args: [],
    );
  }

  /// `Total Payment`
  String get totalPayment {
    return Intl.message(
      'Total Payment',
      name: 'totalPayment',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Flight Admin`
  String get flightAdmin {
    return Intl.message(
      'Flight Admin',
      name: 'flightAdmin',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Flight Admin`
  String get welcomeoFlightAdmin {
    return Intl.message(
      'Welcome to Flight Admin',
      name: 'welcomeoFlightAdmin',
      desc: '',
      args: [],
    );
  }

  /// `Customer Information`
  String get customerInformation {
    return Intl.message(
      'Customer Information',
      name: 'customerInformation',
      desc: '',
      args: [],
    );
  }

  /// `Customer Id`
  String get customerId {
    return Intl.message(
      'Customer Id',
      name: 'customerId',
      desc: '',
      args: [],
    );
  }

  /// `Flight Id`
  String get flightId {
    return Intl.message(
      'Flight Id',
      name: 'flightId',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Create Date`
  String get creDate {
    return Intl.message(
      'Create Date',
      name: 'creDate',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Go Tour`
  String get goTour {
    return Intl.message(
      'Go Tour',
      name: 'goTour',
      desc: '',
      args: [],
    );
  }

  /// `You 'll easily book your bedroom, flights, train, bus and hotels`
  String get sologan {
    return Intl.message(
      'You \'ll easily book your bedroom, flights, train, bus and hotels',
      name: 'sologan',
      desc: '',
      args: [],
    );
  }

  /// `Recomend Airport`
  String get recomendAirport {
    return Intl.message(
      'Recomend Airport',
      name: 'recomendAirport',
      desc: '',
      args: [],
    );
  }

  /// `See more`
  String get seeMore {
    return Intl.message(
      'See more',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `Person`
  String get person {
    return Intl.message(
      'Person',
      name: 'person',
      desc: '',
      args: [],
    );
  }

  /// `Flight Info`
  String get flightInfo {
    return Intl.message(
      'Flight Info',
      name: 'flightInfo',
      desc: '',
      args: [],
    );
  }

  /// `Boeing`
  String get boeing {
    return Intl.message(
      'Boeing',
      name: 'boeing',
      desc: '',
      args: [],
    );
  }

  /// `Benefits`
  String get benefit {
    return Intl.message(
      'Benefits',
      name: 'benefit',
      desc: '',
      args: [],
    );
  }

  /// `Flight Type`
  String get flightType {
    return Intl.message(
      'Flight Type',
      name: 'flightType',
      desc: '',
      args: [],
    );
  }

  /// `Premium`
  String get premium {
    return Intl.message(
      'Premium',
      name: 'premium',
      desc: '',
      args: [],
    );
  }

  /// `List Airports`
  String get listAirports {
    return Intl.message(
      'List Airports',
      name: 'listAirports',
      desc: '',
      args: [],
    );
  }

  /// `Sort by rating`
  String get sortByRating {
    return Intl.message(
      'Sort by rating',
      name: 'sortByRating',
      desc: '',
      args: [],
    );
  }

  /// `Sort by flights`
  String get sortByFlights {
    return Intl.message(
      'Sort by flights',
      name: 'sortByFlights',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get detial {
    return Intl.message(
      'Detail',
      name: 'detial',
      desc: '',
      args: [],
    );
  }

  /// `Another airport`
  String get anotherAirport {
    return Intl.message(
      'Another airport',
      name: 'anotherAirport',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Time Activity`
  String get timeActivity {
    return Intl.message(
      'Time Activity',
      name: 'timeActivity',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Airport contact`
  String get airportContact {
    return Intl.message(
      'Airport contact',
      name: 'airportContact',
      desc: '',
      args: [],
    );
  }

  /// `Write reviews`
  String get writeReviews {
    return Intl.message(
      'Write reviews',
      name: 'writeReviews',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message(
      'Upcoming',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Departure flight`
  String get departureFlight {
    return Intl.message(
      'Departure flight',
      name: 'departureFlight',
      desc: '',
      args: [],
    );
  }

  /// `Landing flight`
  String get landingFlight {
    return Intl.message(
      'Landing flight',
      name: 'landingFlight',
      desc: '',
      args: [],
    );
  }

  /// `gridView`
  String get gridView {
    return Intl.message(
      'gridView',
      name: 'gridView',
      desc: '',
      args: [],
    );
  }

  /// `List View`
  String get listView {
    return Intl.message(
      'List View',
      name: 'listView',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Time Open`
  String get timeOpen {
    return Intl.message(
      'Time Open',
      name: 'timeOpen',
      desc: '',
      args: [],
    );
  }

  /// `Time Close`
  String get timeClose {
    return Intl.message(
      'Time Close',
      name: 'timeClose',
      desc: '',
      args: [],
    );
  }

  /// `You can travel to any place\nwith gotour`
  String get youCanTravelToAnyPlaceWithGotour {
    return Intl.message(
      'You can travel to any place\nwith gotour',
      name: 'youCanTravelToAnyPlaceWithGotour',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message(
      'Continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Skip for now`
  String get skipForNow {
    return Intl.message(
      'Skip for now',
      name: 'skipForNow',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Register New Account`
  String get registerNewAccount {
    return Intl.message(
      'Register New Account',
      name: 'registerNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enterEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `RePassword`
  String get rePassword {
    return Intl.message(
      'RePassword',
      name: 'rePassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password again`
  String get enterRePassword {
    return Intl.message(
      'Enter your password again',
      name: 'enterRePassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message(
      'Sign Out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Or sign in with`
  String get orSignInWith {
    return Intl.message(
      'Or sign in with',
      name: 'orSignInWith',
      desc: '',
      args: [],
    );
  }

  /// `Or sign up with`
  String get orSignUpWith {
    return Intl.message(
      'Or sign up with',
      name: 'orSignUpWith',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Already have account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Ticket`
  String get ticket {
    return Intl.message(
      'Ticket',
      name: 'ticket',
      desc: '',
      args: [],
    );
  }

  /// `Hotel`
  String get hotel {
    return Intl.message(
      'Hotel',
      name: 'hotel',
      desc: '',
      args: [],
    );
  }

  /// `My review`
  String get myReview {
    return Intl.message(
      'My review',
      name: 'myReview',
      desc: '',
      args: [],
    );
  }

  /// `Another Settings`
  String get anotherSettings {
    return Intl.message(
      'Another Settings',
      name: 'anotherSettings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Light Theme`
  String get lightTheme {
    return Intl.message(
      'Light Theme',
      name: 'lightTheme',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get darkTheme {
    return Intl.message(
      'Dark Theme',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterYourName {
    return Intl.message(
      'Enter your name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enterYourPhoneNumber {
    return Intl.message(
      'Enter your phone number',
      name: 'enterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `List Hotels`
  String get listHotels {
    return Intl.message(
      'List Hotels',
      name: 'listHotels',
      desc: '',
      args: [],
    );
  }

  /// `Facilities`
  String get facilities {
    return Intl.message(
      'Facilities',
      name: 'facilities',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Select payment method`
  String get selectPaymentMethod {
    return Intl.message(
      'Select payment method',
      name: 'selectPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Total Price`
  String get totalPrice {
    return Intl.message(
      'Total Price',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Tax`
  String get tax {
    return Intl.message(
      'Tax',
      name: 'tax',
      desc: '',
      args: [],
    );
  }

  /// `Black friday offer`
  String get blackFridayOffer {
    return Intl.message(
      'Black friday offer',
      name: 'blackFridayOffer',
      desc: '',
      args: [],
    );
  }

  /// `Total Amount`
  String get totalAmount {
    return Intl.message(
      'Total Amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Sort by price`
  String get sortByPrice {
    return Intl.message(
      'Sort by price',
      name: 'sortByPrice',
      desc: '',
      args: [],
    );
  }

  /// `Add review`
  String get addReview {
    return Intl.message(
      'Add review',
      name: 'addReview',
      desc: '',
      args: [],
    );
  }

  /// `Rate your stay`
  String get rateYourStay {
    return Intl.message(
      'Rate your stay',
      name: 'rateYourStay',
      desc: '',
      args: [],
    );
  }

  /// `Your Review`
  String get yourReview {
    return Intl.message(
      'Your Review',
      name: 'yourReview',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Select Scott`
  String get selectScott {
    return Intl.message(
      'Select Scott',
      name: 'selectScott',
      desc: '',
      args: [],
    );
  }

  /// `Airlines`
  String get airlines {
    return Intl.message(
      'Airlines',
      name: 'airlines',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Payment Id' key

  /// `Member Information`
  String get memberInfo {
    return Intl.message(
      'Member Information',
      name: 'memberInfo',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Select Dated Born`
  String get selectDateBorn {
    return Intl.message(
      'Select Dated Born',
      name: 'selectDateBorn',
      desc: '',
      args: [],
    );
  }

  /// `Identity Number`
  String get identityNumber {
    return Intl.message(
      'Identity Number',
      name: 'identityNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter Identity`
  String get enterIdentity {
    return Intl.message(
      'Enter Identity',
      name: 'enterIdentity',
      desc: '',
      args: [],
    );
  }

  /// `Add New Customer`
  String get addNewCustomer {
    return Intl.message(
      'Add New Customer',
      name: 'addNewCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Flight History`
  String get flightHistory {
    return Intl.message(
      'Flight History',
      name: 'flightHistory',
      desc: '',
      args: [],
    );
  }

  /// `Booking Code`
  String get bookingCode {
    return Intl.message(
      'Booking Code',
      name: 'bookingCode',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Type`
  String get ticketType {
    return Intl.message(
      'Ticket Type',
      name: 'ticketType',
      desc: '',
      args: [],
    );
  }

  /// `Mined By`
  String get minedBy {
    return Intl.message(
      'Mined By',
      name: 'minedBy',
      desc: '',
      args: [],
    );
  }

  /// `Code Payment`
  String get codePayment {
    return Intl.message(
      'Code Payment',
      name: 'codePayment',
      desc: '',
      args: [],
    );
  }

  /// `Time Payment`
  String get timePayment {
    return Intl.message(
      'Time Payment',
      name: 'timePayment',
      desc: '',
      args: [],
    );
  }

  /// `Person ({number})`
  String personNumber(Object number) {
    return Intl.message(
      'Person ($number)',
      name: 'personNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Add New Card`
  String get addNewCard {
    return Intl.message(
      'Add New Card',
      name: 'addNewCard',
      desc: '',
      args: [],
    );
  }

  /// `Maestro Card`
  String get maestroCard {
    return Intl.message(
      'Maestro Card',
      name: 'maestroCard',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get expenses {
    return Intl.message(
      'Expenses',
      name: 'expenses',
      desc: '',
      args: [],
    );
  }

  /// `Payment Management`
  String get paymentManagement {
    return Intl.message(
      'Payment Management',
      name: 'paymentManagement',
      desc: '',
      args: [],
    );
  }

  /// `Total Payments Today`
  String get totalPaymentsToday {
    return Intl.message(
      'Total Payments Today',
      name: 'totalPaymentsToday',
      desc: '',
      args: [],
    );
  }

  /// `Total Customers Today`
  String get totalCustomersToday {
    return Intl.message(
      'Total Customers Today',
      name: 'totalCustomersToday',
      desc: '',
      args: [],
    );
  }

  /// `Total Flights Today`
  String get totalFlightsToday {
    return Intl.message(
      'Total Flights Today',
      name: 'totalFlightsToday',
      desc: '',
      args: [],
    );
  }

  /// `Total Passenger Today`
  String get totalPassengerToday {
    return Intl.message(
      'Total Passenger Today',
      name: 'totalPassengerToday',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get paymentMethods {
    return Intl.message(
      'Payment Methods',
      name: 'paymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `Search By Account Id, Payment Method,...`
  String get searchByAccount {
    return Intl.message(
      'Search By Account Id, Payment Method,...',
      name: 'searchByAccount',
      desc: '',
      args: [],
    );
  }

  /// `customerId {id}`
  String customerID(Object id) {
    return Intl.message(
      'customerId $id',
      name: 'customerID',
      desc: '',
      args: [id],
    );
  }

  /// `FlightId {id}`
  String flightIdParams(Object id) {
    return Intl.message(
      'FlightId $id',
      name: 'flightIdParams',
      desc: '',
      args: [id],
    );
  }

  /// `PaymentMethod {id}`
  String paymentMethodParams(Object id) {
    return Intl.message(
      'PaymentMethod $id',
      name: 'paymentMethodParams',
      desc: '',
      args: [id],
    );
  }

  /// `status {id}`
  String statusParams(Object id) {
    return Intl.message(
      'status $id',
      name: 'statusParams',
      desc: '',
      args: [id],
    );
  }

  /// `Payment Status Statistic`
  String get paymentStatusStatistic {
    return Intl.message(
      'Payment Status Statistic',
      name: 'paymentStatusStatistic',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Tier Statistic`
  String get ticketTierStatistic {
    return Intl.message(
      'Ticket Tier Statistic',
      name: 'ticketTierStatistic',
      desc: '',
      args: [],
    );
  }

  /// `Total Revenue Today`
  String get totalRevenueToday {
    return Intl.message(
      'Total Revenue Today',
      name: 'totalRevenueToday',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get detail {
    return Intl.message(
      'Detail',
      name: 'detail',
      desc: '',
      args: [],
    );
  }

  /// `Total Airfare:`
  String get totalAirfare {
    return Intl.message(
      'Total Airfare:',
      name: 'totalAirfare',
      desc: '',
      args: [],
    );
  }

  /// `Login or Register`
  String get loginOrRegister {
    return Intl.message(
      'Login or Register',
      name: 'loginOrRegister',
      desc: '',
      args: [],
    );
  }

  /// `Booking for me`
  String get bookingForMe {
    return Intl.message(
      'Booking for me',
      name: 'bookingForMe',
      desc: '',
      args: [],
    );
  }

  /// `Contact Information`
  String get contactInfo {
    return Intl.message(
      'Contact Information',
      name: 'contactInfo',
      desc: '',
      args: [],
    );
  }

  /// `Fill in your information and check your booking`
  String get fillInYourInfo {
    return Intl.message(
      'Fill in your information and check your booking',
      name: 'fillInYourInfo',
      desc: '',
      args: [],
    );
  }

  /// `Login or Register and enjoy exclusive member offers`
  String get loginOrRegisterAndEn {
    return Intl.message(
      'Login or Register and enjoy exclusive member offers',
      name: 'loginOrRegisterAndEn',
      desc: '',
      args: [],
    );
  }

  /// `Booking faster and easier with Passenger Quick Pick`
  String get bookingFasterAndEasier {
    return Intl.message(
      'Booking faster and easier with Passenger Quick Pick',
      name: 'bookingFasterAndEasier',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Information`
  String get passengerInfo {
    return Intl.message(
      'Passenger Information',
      name: 'passengerInfo',
      desc: '',
      args: [],
    );
  }

  /// `Make sure the passenger name matches the name on the CCCD/ID/Passport/Driver/ License issued by the government.You should avoid mistakes as some airlines allow name changes after booking.`
  String get warningsPassenger {
    return Intl.message(
      'Make sure the passenger name matches the name on the CCCD/ID/Passport/Driver/ License issued by the government.You should avoid mistakes as some airlines allow name changes after booking.',
      name: 'warningsPassenger',
      desc: '',
      args: [],
    );
  }

  /// `Use this code to check in at airport or check in online`
  String get useThisCode {
    return Intl.message(
      'Use this code to check in at airport or check in online',
      name: 'useThisCode',
      desc: '',
      args: [],
    );
  }

  /// `Price Summary`
  String get priceSummary {
    return Intl.message(
      'Price Summary',
      name: 'priceSummary',
      desc: '',
      args: [],
    );
  }

  /// `Contact information (receiving tickets/vouchers)`
  String get contactInformationStatus {
    return Intl.message(
      'Contact information (receiving tickets/vouchers)',
      name: 'contactInformationStatus',
      desc: '',
      args: [],
    );
  }

  /// `Payment Options`
  String get paymentOptions {
    return Intl.message(
      'Payment Options',
      name: 'paymentOptions',
      desc: '',
      args: [],
    );
  }

  /// `Make payment within {secs}`
  String makePaymentWithin(Object secs) {
    return Intl.message(
      'Make payment within $secs',
      name: 'makePaymentWithin',
      desc: '',
      args: [secs],
    );
  }

  /// `Payment Card`
  String get paymentCard {
    return Intl.message(
      'Payment Card',
      name: 'paymentCard',
      desc: '',
      args: [],
    );
  }

  /// `Payment number`
  String get paymentNumber {
    return Intl.message(
      'Payment number',
      name: 'paymentNumber',
      desc: '',
      args: [],
    );
  }

  /// `Fit to come`
  String get fitToCome {
    return Intl.message(
      'Fit to come',
      name: 'fitToCome',
      desc: '',
      args: [],
    );
  }

  /// `Name on card`
  String get nameOnCard {
    return Intl.message(
      'Name on card',
      name: 'nameOnCard',
      desc: '',
      args: [],
    );
  }

  /// `Payment Information`
  String get paymentInfo {
    return Intl.message(
      'Payment Information',
      name: 'paymentInfo',
      desc: '',
      args: [],
    );
  }

  /// `Offer`
  String get offer {
    return Intl.message(
      'Offer',
      name: 'offer',
      desc: '',
      args: [],
    );
  }

  /// `Payment by card`
  String get paymentByCard {
    return Intl.message(
      'Payment by card',
      name: 'paymentByCard',
      desc: '',
      args: [],
    );
  }

  /// `Payment at airport`
  String get paymentAtAirport {
    return Intl.message(
      'Payment at airport',
      name: 'paymentAtAirport',
      desc: '',
      args: [],
    );
  }

  /// `Note before payment`
  String get noteBeforePayment {
    return Intl.message(
      'Note before payment',
      name: 'noteBeforePayment',
      desc: '',
      args: [],
    );
  }

  /// `Confirm information`
  String get confirmInformation {
    return Intl.message(
      'Confirm information',
      name: 'confirmInformation',
      desc: '',
      args: [],
    );
  }

  /// `Transaction`
  String get transaction {
    return Intl.message(
      'Transaction',
      name: 'transaction',
      desc: '',
      args: [],
    );
  }

  /// `Provinces`
  String get provinces {
    return Intl.message(
      'Provinces',
      name: 'provinces',
      desc: '',
      args: [],
    );
  }

  /// `Districts`
  String get districts {
    return Intl.message(
      'Districts',
      name: 'districts',
      desc: '',
      args: [],
    );
  }

  /// `Wards`
  String get wards {
    return Intl.message(
      'Wards',
      name: 'wards',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Information before edit`
  String get informationBeforeEdit {
    return Intl.message(
      'Information before edit',
      name: 'informationBeforeEdit',
      desc: '',
      args: [],
    );
  }

  /// `Preview`
  String get preview {
    return Intl.message(
      'Preview',
      name: 'preview',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Previous`
  String get previous {
    return Intl.message(
      'Previous',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `Arrival Place`
  String get arrivalPlace {
    return Intl.message(
      'Arrival Place',
      name: 'arrivalPlace',
      desc: '',
      args: [],
    );
  }

  /// `Arrival Flight`
  String get arrivalFlight {
    return Intl.message(
      'Arrival Flight',
      name: 'arrivalFlight',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Empty`
  String get empty {
    return Intl.message(
      'Empty',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `enable`
  String get enable {
    return Intl.message(
      'enable',
      name: 'enable',
      desc: '',
      args: [],
    );
  }

  /// `disable`
  String get disable {
    return Intl.message(
      'disable',
      name: 'disable',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Category Detail`
  String get ticketCategoryDetail {
    return Intl.message(
      'Ticket Category Detail',
      name: 'ticketCategoryDetail',
      desc: '',
      args: [],
    );
  }

  /// `Flights Config`
  String get flightsConfig {
    return Intl.message(
      'Flights Config',
      name: 'flightsConfig',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Edit Customer`
  String get editCustomer {
    return Intl.message(
      'Edit Customer',
      name: 'editCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Selected Customer`
  String get selectedCustomer {
    return Intl.message(
      'Selected Customer',
      name: 'selectedCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `See Details`
  String get seeDetails {
    return Intl.message(
      'See Details',
      name: 'seeDetails',
      desc: '',
      args: [],
    );
  }

  /// `Back to dashboard`
  String get backToDashboard {
    return Intl.message(
      'Back to dashboard',
      name: 'backToDashboard',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `List Stop Airports`
  String get listStopAirports {
    return Intl.message(
      'List Stop Airports',
      name: 'listStopAirports',
      desc: '',
      args: [],
    );
  }

  /// `Time Stop Airports`
  String get timeStopAirports {
    return Intl.message(
      'Time Stop Airports',
      name: 'timeStopAirports',
      desc: '',
      args: [],
    );
  }

  /// `Departure Place`
  String get departurePlace {
    return Intl.message(
      'Departure Place',
      name: 'departurePlace',
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
