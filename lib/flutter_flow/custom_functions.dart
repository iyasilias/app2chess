import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool? showSearchResult(
  String textSearchFor,
  String textSearchIn,
) {
  return textSearchIn.toLowerCase().contains(textSearchFor.toLowerCase());
}

bool? isValidEmail(String? email) {
  email = email ?? "";

  final RegExp emailRegExp = RegExp(
    r'^[\w\.-]+@[\w\.-]+\.\w+$',
    caseSensitive: false,
    multiLine: false,
  );

  return emailRegExp.hasMatch(email);
}

bool? isValidNoKP(String? nokp) {
  nokp = nokp ?? "";

  if (nokp.length != 12) {
    return false;
  }

  int currentYear = DateTime.now().year;
  int yearDigits = int.parse(nokp.substring(0, 2));

  int umur = currentYear - (yearDigits + 1900);

  if (umur > 80 || umur < 4) {
    return false;
  }

  if (int.tryParse(nokp) == null) {
    return false;
  }

  return true;
}

int? txtToInt(String? txt) {
  txt = txt ?? "0";

  try {
    return int.parse(txt);
  } catch (e) {
    return 0;
  }
}

int? checkStringLength(String? strToCheck) {
  strToCheck = strToCheck ?? "";

  return strToCheck.length;
}

String? formatLocalTime(DateTime? dateTime) {
  dateTime = dateTime ?? DateTime.now();

  // Define the desired timezone offset (UTC+8)
  final timeZoneOffset = Duration(hours: 8);

  // Calculate the local time with the offset
  final localTime = dateTime.add(timeZoneOffset);

  // Define the date and time format
  final dateFormat = DateFormat('EEEE d/M h:mm a');

  // Format the local time
  final formattedTime = dateFormat.format(localTime);

  return formattedTime;
}
