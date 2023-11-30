import 'dart:io';

import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';

import '../common/global_configs.dart';
import '../models/post/discover/response/list_discover_response.dart';
import '../models/post/request/create_commnet_request.dart';
import '../models/post/request/update_comment_request.dart';
import '../models/post/response/add_post_response.dart';
import '../models/post/response/comment_post_response.dart';
import '../models/question/answer/request/answer_request.dart';
import '../models/question/answer/response/listanswerresponse.dart';
import '../models/question/response/listquestionresponse.dart';
import '../models/question/response/questionresponse.dart';
import '../models/question/sub_answer/request/sub_answer_request.dart';
import '../models/report/request/report_post_request.dart';
import '../models/report/response/list_report_response.dart';
import '../models/succes/response/success_response_list.dart';
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

  @GET('Post/DiscoverMobile')
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

  @POST('Post/Chat')
  Future<CommentResponse> createComment({
    @Body() required CreateCommentRequest request,
  });

  @GET('Post/Chat')
  Future<CommentResponse> getComment({
    @Query('PostId') required String postId,
  });

  @PUT('Post/Chat')
  Future<CommentResponse> updateComment({
    @Body() required UpdateCommentRequest request,
  });

  @GET('HashTag')
  Future<SuccesResponseList> getListTag();

  @GET('Post/FindByTag')
  Future<ListDiscoverResponse> getListPostByTag({
    @Query('tag') required String tag,
  });

  @GET('Post/Search')
  Future<ListDiscoverResponse> searchPost({
    @Query('keyWord') required String keyword,
  });

  @POST('Question')
  Future<QuestionResponse> createQuestion({
    @Part(name: 'Title') required String title,
    @Part(name: 'Content') required String content,
    @Part(name: 'Tag') required List<String> tag,
  });

  @PUT('Question')
  Future<QuestionResponse> updateQuestion({
    @Part(name: 'Id') required String id,
    @Part(name: 'Title') required String title,
    @Part(name: 'Content') required String content,
    @Part(name: 'Tag') required List<String> tag,
  });

  @GET('Question')
  Future<ListQuestionResponse> getAllQuestion();

  @GET('Question/Detail')
  Future<QuestionResponse> getDetailPostBySubId({
    @Query('subId') required String subId,
  });

  @POST('Answer')
  Future<ListAnswerResponse> createAnswer({
    @Body() required AnswerRequest request,
  });

  @GET('Answer')
  Future<ListAnswerResponse> getAnswer({
    @Query('questionId') required String questionId,
  });

  @POST('Answer/SubAnswer')
  Future<SuccesResponse> createSubAnswer({
    @Body() required SubAnswerRequest request,
  });
}
