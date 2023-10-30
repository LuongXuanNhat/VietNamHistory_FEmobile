import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../common/global_configs.dart';
import '../common/storage/app_prefs.dart';
import '../get_it.dart';
import '../models/base/response/error_response.dart';
import '../models/user/request/login_request.dart';
import '../models/user/request/register_request.dart';
import '../models/user/request/update_profile_request.dart';
import '../models/user/response/login_response.dart';
import '../models/user/response/register_response.dart';
import '../models/user/response/user_response.dart';
import '../networks/rest_client.dart';
// ignore: implementation_imports
import 'package:injectable/src/injectable_annotations.dart';

@lazySingleton
class DataRepository implements RestClient {
  final dio = Dio();
  RestClient? client;
  final appPrefs = getIt<AppPref>();

  DataRepository() {
    if (kDebugMode) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }
    dio.options.contentType = Headers.jsonContentType;
    dio.options.responseType = ResponseType.json;
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';

    // /// Add middleware Authorization
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handle) async {
      final token = (await appPrefs.getToken())?.token ?? '';
      options.headers['Authorization'] = 'Bearer $token';
      options.headers['Content-Type'] = 'application/json';
      options.headers['Accept'] = 'application/json';
      return handle.next(options);
    }));

    /// Middleware  Error Handling
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error1, handle) {
          final errorResponse = ErrorResponse.fromJson(error1.response?.data);
          // ignore: deprecated_member_use
          final error = DioError(
              requestOptions: RequestOptions(path: ''),
              error: errorResponse.toJson());
          return handle.reject(error);
        },
      ),
    );
    client = RestClient(dio, baseUrl: GlobalConfigs.kBaseUrl);
  }

  // @override
  // Future<LoginResponse> getToken({required LoginRequest request}) {
  //   return client!.login(request: request);
  // }

  @override
  Future<LoginResponse> login({required LoginRequest request}) {
    return client!.login(request: request);
  }

  @override
  Future<RegisterResponse> register({required RegisterRequest request}) {
    return client!.register(request: request);
  }

  @override
  Future<UserResponse> loggedIn() {
    return client!.loggedIn();
  }

  @override
  Future<UserResponse> updateProfile({required UpdateProfileRequest request}) {
    return client!.updateProfile(request: request);
  }
}
