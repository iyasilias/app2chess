import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase ChessMy Group Code

class SupabaseChessMyGroup {
  static String baseUrl =
      'https://tnpcirujaxnzealflavq.supabase.co/rest/v1/rpc';
  static Map<String, String> headers = {};
  static SearchPlayerCall searchPlayerCall = SearchPlayerCall();
  static SearchICCall searchICCall = SearchICCall();
  static EventVouchersCall eventVouchersCall = EventVouchersCall();
}

class SearchPlayerCall {
  Future<ApiCallResponse> call({
    String? apikey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRucGNpcnVqYXhuemVhbGZsYXZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTMyNjg5MDQsImV4cCI6MjAwODg0NDkwNH0.sNxad7bvMatDhTGVpD7WG3Wu8D6h9n2ZhyfFtJlReXs',
    String? searchText = 'xyz',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Player',
      apiUrl: '${SupabaseChessMyGroup.baseUrl}/search_records?apikey=$apikey',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'search_text': searchText,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchICCall {
  Future<ApiCallResponse> call({
    String? icToSearch = '',
    String? apikey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRucGNpcnVqYXhuemVhbGZsYXZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTMyNjg5MDQsImV4cCI6MjAwODg0NDkwNH0.sNxad7bvMatDhTGVpD7WG3Wu8D6h9n2ZhyfFtJlReXs',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search IC',
      apiUrl: '${SupabaseChessMyGroup.baseUrl}/search_ic?apikey=$apikey',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'ic_to_search': icToSearch,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic result(dynamic response) => getJsonField(
        response,
        r'''$.result''',
      );
}

class EventVouchersCall {
  Future<ApiCallResponse> call({
    String? apikey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRucGNpcnVqYXhuemVhbGZsYXZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTMyNjg5MDQsImV4cCI6MjAwODg0NDkwNH0.sNxad7bvMatDhTGVpD7WG3Wu8D6h9n2ZhyfFtJlReXs',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Event Vouchers',
      apiUrl: '${SupabaseChessMyGroup.baseUrl}/event_vouchers?apikey=$apikey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Supabase ChessMy Group Code

class DskpCall {
  static Future<ApiCallResponse> call({
    String? apikey = '',
    String? token = '',
    String? select = '',
    int? limit,
    String? where = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DSKP',
      apiUrl:
          'https://yedmbmytyjiawotofngm.supabase.co/rest/v1/dskp?select=$select&limit=$limit&$where',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'apikey': '$apikey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
