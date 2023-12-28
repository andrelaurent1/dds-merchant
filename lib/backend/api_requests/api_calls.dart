import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API Group Group Code

class APIGroupGroup {
  static String baseUrl =
      'https://kyaliskplpiwphtmmzzp.supabase.co/rest/v1/rpc';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
  };
  static GetMerchantCall getMerchantCall = GetMerchantCall();
  static UpdateProductStockAfterRestockCall updateProductStockAfterRestockCall =
      UpdateProductStockAfterRestockCall();
  static TotalSalesPerMonthCall totalSalesPerMonthCall =
      TotalSalesPerMonthCall();
  static UnitsSoldPerMonthCall unitsSoldPerMonthCall = UnitsSoldPerMonthCall();
  static TotalSalesEachProductPerMonthCall totalSalesEachProductPerMonthCall =
      TotalSalesEachProductPerMonthCall();
  static UpdateProductPriceCall updateProductPriceCall =
      UpdateProductPriceCall();
  static TotalSalesPerDayCall totalSalesPerDayCall = TotalSalesPerDayCall();
  static MerchantProductCountCall merchantProductCountCall =
      MerchantProductCountCall();
}

class GetMerchantCall {
  Future<ApiCallResponse> call({
    String? currentUserId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "current_user_id": "${currentUserId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getMerchant',
      apiUrl: '${APIGroupGroup.baseUrl}/get_merchant',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProductStockAfterRestockCall {
  Future<ApiCallResponse> call({
    String? productID = '',
    int? qty,
  }) async {
    final ffApiRequestBody = '''
{
  "productid": "${productID}",
  "qty": ${qty}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProductStockAfterRestock',
      apiUrl: '${APIGroupGroup.baseUrl}/update_product_stock_after_restock',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TotalSalesPerMonthCall {
  Future<ApiCallResponse> call({
    String? merchantID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "merchantid": "${merchantID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'totalSalesPerMonth',
      apiUrl: '${APIGroupGroup.baseUrl}/total_sales_per_month',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic totalSales(dynamic response) => getJsonField(
        response,
        r'''$.total_sales''',
      );
}

class UnitsSoldPerMonthCall {
  Future<ApiCallResponse> call({
    String? merchantID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "merchantid": "${merchantID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'unitsSoldPerMonth',
      apiUrl: '${APIGroupGroup.baseUrl}/units_sold_per_month',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic totalUnitsSold(dynamic response) => getJsonField(
        response,
        r'''$.total_units_sold''',
      );
}

class TotalSalesEachProductPerMonthCall {
  Future<ApiCallResponse> call({
    String? merchantID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "merchantid": "${merchantID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'totalSalesEachProductPerMonth',
      apiUrl: '${APIGroupGroup.baseUrl}/total_sales_each_product_per_month',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? unitsSold(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_units_sold''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? salesPerProduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_sales_each_product''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? productNamePerMonth(dynamic response) => getJsonField(
        response,
        r'''$[:].product_name''',
        true,
      ) as List?;
}

class UpdateProductPriceCall {
  Future<ApiCallResponse> call({
    double? newPrice,
    String? productID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "newprice": ${newPrice},
  "productid": "${productID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProductPrice',
      apiUrl: '${APIGroupGroup.baseUrl}/update_product_price',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TotalSalesPerDayCall {
  Future<ApiCallResponse> call({
    String? merchantID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "merchantid": "${merchantID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'totalSalesPerDay',
      apiUrl: '${APIGroupGroup.baseUrl}/total_sales_per_day',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? dateSold(dynamic response) => getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?;
  List? sales(dynamic response) => getJsonField(
        response,
        r'''$[:].total_sales_each_product''',
        true,
      ) as List?;
  List? unitsSold(dynamic response) => getJsonField(
        response,
        r'''$[:].total_units_sold''',
        true,
      ) as List?;
}

class MerchantProductCountCall {
  Future<ApiCallResponse> call({
    String? merchantID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "current_merchant_id": "${merchantID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MerchantProductCount',
      apiUrl: '${APIGroupGroup.baseUrl}/product_count',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API Group Group Code

/// Start RBAC Group Code

class RbacGroup {
  static String baseUrl = 'https://kyaliskplpiwphtmmzzp.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
    'Accept-Profile': 'rbac',
  };
}

/// End RBAC Group Code

/// Start oldDDS Group Code

class OldDDSGroup {
  static String baseUrl = 'https://dev-ddsapi.danadaya.com';
  static Map<String, String> headers = {};
  static GenerateKeyCall generateKeyCall = GenerateKeyCall();
}

class GenerateKeyCall {
  Future<ApiCallResponse> call({
    String? requestid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'generateKey',
      apiUrl: '${OldDDSGroup.baseUrl}/mobile/satudaya/generatekey/${requestid}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic requestId(dynamic response) => getJsonField(
        response,
        r'''$.data.request_id''',
      );
  dynamic key(dynamic response) => getJsonField(
        response,
        r'''$.data.key''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

/// End oldDDS Group Code

/// Start supabase Group Code

class SupabaseGroup {
  static String baseUrl = 'https://kyaliskplpiwphtmmzzp.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
  };
  static GetUserInfoCall getUserInfoCall = GetUserInfoCall();
}

class GetUserInfoCall {
  Future<ApiCallResponse> call({
    String? userid = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserInfo',
      apiUrl: '${SupabaseGroup.baseUrl}/users',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5YWxpc2twbHBpd3BodG1tenpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5NzExNjcsImV4cCI6MjAxMTU0NzE2N30.lM38vDJhwvqDnWkxaH8MO45wKONMvHfSOm4qx9Z9vGo',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'id': "eq.${userid}",
        'select': "*",
        'limit': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic oldUserId(dynamic response) => getJsonField(
        response,
        r'''$[:].old_user_id''',
      );
}

/// End supabase Group Code

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
