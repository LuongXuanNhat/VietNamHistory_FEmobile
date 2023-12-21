import 'dart:io';

import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';

import '../common/global_configs.dart';
import '../models/document/response/detail_document_respons.dart';
import '../models/document/response/list_document_response.dart';
import '../models/history_exam/response/exam_history_response.dart';
import '../models/history_exam/response/list_history_myexam.dart';
import '../models/multiplechoice/response/detail_quiz_response.dart';
import '../models/multiplechoice/response/multiple_choice_response.dart';
import '../models/news/response/news_response.dart';
import '../models/post/discover/response/list_discover_response.dart';
import '../models/post/request/create_commnet_request.dart';
import '../models/post/request/update_comment_request.dart';
import '../models/post/response/add_post_response.dart';
import '../models/post/response/comment_post_response.dart';
import '../models/question/answer/request/answer_request.dart';
import '../models/question/answer/request/update_answer_request.dart';
import '../models/question/answer/response/listanswerresponse.dart';
import '../models/question/answer/subanswer/request/sub_answer_request.dart';
import '../models/question/response/listquestionresponse.dart';
import '../models/question/response/questionresponse.dart';
import '../models/question/sub_answer/request/sub_answer_request.dart';
import '../models/question/sub_answer/request/vote_answer_request.dart';
import '../models/question/sub_answer/response/vote_asnwert_response.dart';
import '../models/report/request/report_post_request.dart';
import '../models/report/response/list_report_response.dart';
import '../models/succes/response/success_response_list.dart';
import '../models/succes/response/success_response.dart';
import '../models/succes/response/success_response_bool.dart';
import '../models/topic/response/list_topic_response.dart';
import '../models/user/request/change_password_response.dart';
import '../models/user/request/login_request.dart';
import '../models/user/request/register_request.dart';

import '../models/user/request/reset_password_request.dart';
import '../models/user/request/update_profile_request.dart';

import '../models/user/response/confirm_email.dart';

import '../models/user/response/login_response.dart';
import '../models/user/response/mypost_response.dart';
import '../models/user/response/register_response.dart';
import '../models/user/response/send_email.dart';
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
  @DELETE('Post/Delete')
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
  @POST('Question/Save')
  Future<SuccesResponseBool> saveQuestion({
    @Part(name: 'QuestionId') required String questionId,
    @Part(name: 'UserId') required String userId,
  });
  @GET('Question/Save')
  Future<SuccesResponseBool> checkSaveQuestion({
    @Query('QuestionId') required String questionId,
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

  @GET('Question/MyQuestion')
  Future<ListQuestionResponse> getMyQuestion();

  @GET('Question/MyQuestionSaved')
  Future<ListQuestionResponse> getMyQuestionSave();

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

  @PUT('Answer')
  Future<ListAnswerResponse> updateAnswer({
    @Body() required UpdateAnswerRequest request,
  });

  @DELETE('Answer/delete')
  Future<SuccesResponse> deleteAnswer({
    @Query('idAnswer') required String id,
  });

  @POST('Answer/SubAnswer')
  Future<SuccesResponse> createSubAnswer({
    @Body() required SubAnswerRequest request,
  });

  @PUT('Answer/SubAnswer')
  Future<SuccesResponse> updateSubAnswer({
    @Body() required UpdateSubAnswerRequest request,
  });

  @GET('Post/MyPost')
  Future<MyPostResponse> getMyPost();

  @GET('Post/MyPost')
  Future<ListDiscoverResponse> getMyPost1();

  @GET('Post/MyPostSaved')
  Future<MyPostResponse> getMyPostSave();
  @GET('Post/MyPostSaved')
  Future<ListDiscoverResponse> getMyPostSave1();

  @DELETE('Post/Chat')
  Future<CommentResponse> deleteComment(
      {@Query('idComment') required String idComment});

  @POST('ChangeEmail')
  Future<SuccesResponse> changeEmail({@Query('email') required String email});

  @DELETE('Answer/DeleteSub')
  Future<SuccesResponse> deleteSubAnswer(
      {@Query('idSubAnswer') required String idSubAnswer});

  @GET('ForgetPassword')
  Future<ForgotPassSendEmail> forgotPassword(
      {@Query('email') required String email});

  @GET('ForgetPassword/ConfirmCode')
  Future<ForgotPassConfirmEmail> confirmCode({
    @Query('email') required String email,
  });

  @POST('Resetpassword')
  Future<SuccesResponse> resetPassword({
    @Body() required ResetPasswordRequest request,
  });

  @POST('Answer/Vote')
  Future<VoteAnswerResponse> voteAnswer({
    @Body() required VoteAnswerRequest request,
  });

  @POST('Answer/Confirm')
  Future<VoteAnswerResponse> confirmAnswer({
    @Body() required VoteAnswerRequest request,
  });

  @GET('Answer/GetMyVote')
  Future<VoteAnswerResponse> getMyVote({
    @Query('answerId') required String answerId,
    @Query('userId') required String userId,
  });

  @GET('News')
  Future<NewsResponse> getNews();

  @GET('Question/Search')
  Future<ListQuestionResponse> searchQuestion({
    @Query('keyWord') required String keyword,
  });

  @GET('Question/AllTag')
  Future<SuccesResponseList> getAllTag({
    @Query('numberTag') required int numberTag,
  });

  @GET('Question/FindByTag')
  Future<ListQuestionResponse> getListQuestionByTag({
    @Query('tag') required String tag,
  });

  @DELETE('Question/Delete')
  Future<SuccesResponse> deleteQuestion({
    @Query('Id') required String id,
  });

  @GET('MultipleChoice')
  Future<MultipleChoiceResponse> listMultipleChoice();

  @GET('MultipleChoice/{Id}')
  Future<DetailQuizResponse> detailQuiz({
    @Path('Id') required String id,
  });

  @GET('/Document')
  Future<ListDocumentResponse> listDocument();

  // https://vuanhpham25-001-site1.gtempurl.com/Document/abc-233803.347298
  @GET('/Document/{Id}')
  Future<DetailDocumentResponse> detailDocument({
    @Path('Id') required String id,
  });

  @GET('/MultipleChoice/{id}')
  Future<DetailQuizResponse> detailQuizById({
    @Path('id') required String id,
  });

  @POST('/ExamHistory')
  Future<ExamHistoryResponse> historyExame({
    @Part(name: 'MultipleChoiceId') required String multipleChoipleId,
    @Part(name: 'UserId') required String userId,
    @Part(name: 'Scores') required int scores,
    @Part(name: 'CompletionTime') required int completionTime,
    @Part(name: 'StarDate') required String starDate,
  });
  @GET('/ExamHistory/GetMyExamHistory')
  Future<ListHistoryMyExam> getMyExamHistory({
    @Query('id') required String id,
  });
}
