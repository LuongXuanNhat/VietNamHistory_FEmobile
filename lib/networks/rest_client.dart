import 'dart:io';

import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';

import '../common/global_configs.dart';
import '../models/post/discover/response/list_discover_response.dart';
import '../models/post/request/udpate_post_request.dart';
import '../models/post/response/add_post_response.dart';
import '../models/report/request/report_post_request.dart';
import '../models/report/response/list_report_response.dart';
import '../models/succes/response/success_response.dart';
import '../models/succes/response/success_response_bool.dart';
import '../models/topic/response/list_topic_response.dart';
import '../models/user/request/change_password_request.dart';
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
  Future<UserResponse> updateProfile({
    @Body() required UpdateProfileRequest request,
  });

  @MultiPart()
  @POST('User/Image')
  Future<String> updateAvatar({
    @Part(name: 'Image') File? image,
  });

  @POST('ChangePassword')
  Future<String> changePassword({
    @Body() required ChangePasswordRequest? request,
  });

  @GET('Topic')
  Future<ListTopicResponse> getListTopic();

  @GET('User/Image')
  Future<SuccesResponse> getImage();

  @MultiPart()
  @POST('Post')
  Future<AddPostResponse> createPost({
    @Part(name: 'Title') required String title,
    @Part(name: 'Content') required String content,
    @Part(name: 'Image') required File image,
    @Part(name: 'TopicId') required String topicId,
    @Part(name: 'Tag') required List<String> tag,
  });

  @GET('Post/Discover')
  Future<ListDiscoverResponse> getListDiscover();
  @DELETE('Post')
  Future<SuccesResponse> deletePost({@Query('Id') required String id});

  @GET('Post/{SubId}')
  Future<AddPostResponse> getDetailPost({@Path('SubId') required String id});

  @POST('Post/Report')
  Future<SuccesResponse> reportPost({
    @Body() required ReportPostRequest? request,
  });

  @GET('Report')
  Future<ListReport> listReport();

  @PUT('Post')
  Future<AddPostResponse> updatePost({
    @Part(name: 'Id') required String id,
    @Part(name: 'Title') required String title,
    @Part(name: 'Content') required String content,
    @Part(name: 'Image') File? image,
    @Part(name: 'TopicId') required String topicId,
    @Part(name: 'Tag') required List<String> tag,
  });

  @POST('Post/Like')
  Future<SuccesResponseBool> likePost({
    @Part(name: 'PostId') required String postId,
    @Part(name: 'UserId') required String userId,
  });
  // https://vuanhpham25-001-site1.gtempurl.com/Post/Like?PostId=Nhan-Vat-Lich-SuLy-Nam-e-23:31:50.893-18-11-2023&UserId=57EAEF52-4106-4C36-89E7-337692E350A5

  @GET('Post/Like')
  Future<SuccesResponseBool> checkLikePost({
    @Query('PostId') required String postId,
    @Query('UserId') required String userId,
  });

  @POST('Post/Save')
  Future<SuccesResponseBool> savePost({
    @Part(name: 'PostId') required String postId,
    @Part(name: 'UserId') required String userId,
  });
  @GET('Post/Save')
  Future<SuccesResponseBool> checkSavePost({
    @Query('PostId') required String postId,
    @Query('UserId') required String userId,
  });
}
