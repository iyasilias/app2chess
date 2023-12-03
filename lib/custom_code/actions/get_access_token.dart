// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:io';

Future<dynamic> getAccessToken(String? url) async {
  // Add your function code here!

  url = url ?? "";

  // final httpClient = HttpClient();
  final uri = Uri.parse(url);
  // final request = await httpClient.getUrl(uri);
  // final response = await request.close();
  // final responseBody = await response.transform(Utf8Decoder()).join();

  final parsedData = _parseQueryParameters(uri.fragment);

  final json = {
    'access_token': parsedData['access_token'],
    'expires_in': parsedData['expires_in'],
    'refresh_token': parsedData['refresh_token'],
    'token_type': parsedData['token_type'],
    'type': parsedData['type'],
  };

  return json;
}

Map<String, String> _parseQueryParameters(String queryString) {
  final queryParameters = queryString.split('&');
  final result = <String, String>{};
  for (final parameter in queryParameters) {
    final keyValue = parameter.split('=');
    if (keyValue.length == 2) {
      final key = keyValue[0];
      final value = keyValue[1];
      result[key] = value;
    }
  }
  return result;
}
