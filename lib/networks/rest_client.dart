import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../common/global_configs.dart';
import '../models/user/request/login_request.dart';
import '../models/user/request/register_request.dart';
import '../models/user/request/update_profile_request.dart';
import '../models/user/response/login_response.dart';
import '../models/user/response/register_response.dart';
import '../models/user/response/user_response.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: GlobalConfigs.kBaseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  /// repo - auth
  @POST('/Login')
  Future<LoginResponse> login({@Body() required LoginRequest request});

  @POST('/Signup')
  Future<RegisterResponse> register({@Body() required RegisterRequest request});

  @GET('User')
  Future<UserResponse> loggedIn();

  @PUT('User')
  Future<UserResponse> updateProfile(
      {@Body() required UpdateProfileRequest request});
}
