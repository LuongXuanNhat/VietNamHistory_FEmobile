import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../common/global_configs.dart';
import '../common/storage/app_prefs.dart';
import '../get_it.dart';
import '../models/base/response/error_response.dart';
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
import '../networks/rest_client.dart';

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
      final token = (await appPrefs.getToken())?.resultObj ?? '';
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
  Future<UserResponse> updateProfile({
    required UpdateProfileRequest request,
  }) {
    return client!.updateProfile(request: request);
  }

  @override
  Future<String> updateAvatar({File? image}) {
    return client!.updateAvatar(image: image);
  }

  @override
  Future<String> changePassword({required ChangePasswordRequest? request}) {
    return client!.changePassword(request: request);
  }

  @override
  Future<ListTopicResponse> getListTopic() {
    return client!.getListTopic();
  }

  @override
  Future<SuccesResponse> getImage() {
    return client!.getImage();
  }

  @override
  Future<AddPostResponse> createPost({
    required String title,
    required String content,
    required String topicId,
    required File image,
    required List<String> tag,
  }) {
    return client!.createPost(
      title: title,
      content: content,
      topicId: topicId,
      image: image,
      tag: tag,
    );
  }

  @override
  Future<ListDiscoverResponse> getListDiscover() {
    return client!.getListDiscover();
  }

  @override
  Future<SuccesResponse> deletePost({required String id}) {
    return client!.deletePost(id: id);
  }

  @override
  Future<AddPostResponse> getDetailPost({required String id}) {
    return client!.getDetailPost(id: id);
  }

  @override
  Future<SuccesResponse> reportPost({
    required ReportPostRequest? request,
  }) {
    return client!.reportPost(request: request);
  }

  @override
  Future<ListReport> listReport() {
    return client!.listReport();
  }

  @override
  Future<AddPostResponse> updatePost({
    required String id,
    required String title,
    required String content,
    required String topicId,
    File? image,
    required List<String> tag,
  }) {
    return client!.updatePost(
      id: id,
      title: title,
      content: content,
      topicId: topicId,
      image: image,
      tag: tag,
    );
  }

  @override
  Future<SuccesResponseBool> likePost({
    required String postId,
    required String userId,
  }) {
    return client!.likePost(postId: postId, userId: userId);
  }

  @override
  Future<SuccesResponseBool> checkLikePost({
    required String postId,
    required String userId,
  }) {
    return client!.checkLikePost(postId: postId, userId: userId);
  }

  @override
  Future<SuccesResponseBool> savePost({
    required String postId,
    required String userId,
  }) {
    return client!.savePost(postId: postId, userId: userId);
  }

  @override
  Future<SuccesResponseBool> checkSavePost({
    required String postId,
    required String userId,
  }) {
    return client!.checkSavePost(postId: postId, userId: userId);
  }

  //createcomment
  @override
  Future<CommentResponse> createComment({
    required CreateCommentRequest request,
  }) {
    return client!.createComment(
      request: request,
    );
  }

  //getcomment
  @override
  Future<CommentResponse> getComment({
    required String postId,
  }) {
    return client!.getComment(
      postId: postId,
    );
  }

  //updatecomment
  @override
  Future<CommentResponse> updateComment({
    required UpdateCommentRequest request,
  }) {
    return client!.updateComment(
      request: request,
    );
  }

  @override
  Future<SuccesResponseList> getListTag() {
    return client!.getListTag();
  }

  @override
  Future<ListDiscoverResponse> getListPostByTag({
    required String tag,
  }) {
    return client!.getListPostByTag(tag: tag);
  }

  @override
  Future<ListDiscoverResponse> searchPost({
    required String keyword,
  }) {
    return client!.searchPost(keyword: keyword);
  }

  @override
  Future<QuestionResponse> createQuestion({
    required String title,
    required String content,
    required List<String> tag,
  }) {
    return client!.createQuestion(
      title: title,
      content: content,
      tag: tag,
    );
  }

  @override
  Future<QuestionResponse> updateQuestion({
    required String id,
    required String title,
    required String content,
    required List<String> tag,
  }) {
    return client!.updateQuestion(
      id: id,
      title: title,
      content: content,
      tag: tag,
    );
  }

  @override
  Future<QuestionResponse> getDetailPostBySubId({required String subId}) {
    return client!.getDetailPostBySubId(subId: subId);
  }

  @override
  Future<ListQuestionResponse> getAllQuestion() {
    return client!.getAllQuestion();
  }

  @override
  Future<ListAnswerResponse> createAnswer({required AnswerRequest request}) {
    return client!.createAnswer(
      request: request,
    );
  }

  @override
  Future<ListAnswerResponse> getAnswer({required String questionId}) {
    return client!.getAnswer(questionId: questionId);
  }

  @override
  Future<SuccesResponse> createSubAnswer({required SubAnswerRequest request}) {
    return client!.createSubAnswer(
      request: request,
    );
  }

  @override
  Future<MyPostResponse> getMyPost() {
    return client!.getMyPost();
  }

  @override
  Future<ListDiscoverResponse> getMyPost1() {
    return client!.getMyPost1();
  }

  @override
  Future<MyPostResponse> getMyPostSave() {
    return client!.getMyPostSave();
  }

  @override
  Future<ListDiscoverResponse> getMyPostSave1() {
    return client!.getMyPostSave1();
  }

  @override
  Future<CommentResponse> deleteComment({required String idComment}) {
    return client!.deleteComment(idComment: idComment);
  }

  @override
  Future<SuccesResponse> changeEmail({required String email}) {
    return client!.changeEmail(email: email);
  }

  @override
  Future<ListAnswerResponse> updateAnswer({
    required UpdateAnswerRequest request,
  }) {
    return client!.updateAnswer(
      request: request,
    );
  }

  @override
  Future<SuccesResponse> deleteAnswer({required String id}) {
    return client!.deleteAnswer(id: id);
  }

  @override
  Future<SuccesResponse> updateSubAnswer({
    required UpdateSubAnswerRequest request,
  }) {
    return client!.updateSubAnswer(
      request: request,
    );
  }

  @override
  Future<SuccesResponse> deleteSubAnswer({required String idSubAnswer}) {
    return client!.deleteSubAnswer(idSubAnswer: idSubAnswer);
  }

  @override
  Future<ForgotPassSendEmail> forgotPassword({required String email}) {
    return client!.forgotPassword(email: email);
  }

  @override
  Future<ForgotPassConfirmEmail> confirmCode({required String email}) {
    return client!.confirmCode(email: email);
  }

  @override
  Future<SuccesResponse> resetPassword({
    required ResetPasswordRequest request,
  }) {
    return client!.resetPassword(request: request);
  }

  @override
  Future<VoteAnswerResponse> voteAnswer({
    required VoteAnswerRequest request,
  }) {
    return client!.voteAnswer(request: request);
  }

  @override
  Future<VoteAnswerResponse> confirmAnswer({
    required VoteAnswerRequest request,
  }) {
    return client!.confirmAnswer(request: request);
  }

  @override
  Future<VoteAnswerResponse> getMyVote(
      {required String answerId, required String userId}) {
    return client!.getMyVote(answerId: answerId, userId: userId);
  }

  @override
  Future<NewsResponse> getNews() {
    return client!.getNews();
  }

  @override
  Future<ListQuestionResponse> searchQuestion({required String keyword}) {
    return client!.searchQuestion(keyword: keyword);
  }

  @override
  Future<SuccesResponseList> getAllTag({required int numberTag}) {
    return client!.getAllTag(numberTag: numberTag);
  }

  @override
  Future<ListQuestionResponse> getListQuestionByTag({required String tag}) {
    return client!.getListQuestionByTag(tag: tag);
  }

  @override
  Future<SuccesResponseBool> saveQuestion({
    required String questionId,
    required String userId,
  }) {
    return client!.saveQuestion(questionId: questionId, userId: userId);
  }

  @override
  Future<SuccesResponseBool> checkSaveQuestion({
    required String questionId,
    required String userId,
  }) {
    return client!.checkSaveQuestion(questionId: questionId, userId: userId);
  }

  @override
  Future<ListQuestionResponse> getMyQuestion() {
    return client!.getMyQuestion();
  }

  @override
  Future<ListQuestionResponse> getMyQuestionSave() {
    return client!.getMyQuestionSave();
  }

  @override
  Future<SuccesResponse> deleteQuestion({required String id}) {
    return client!.deleteQuestion(id: id);
  }

  @override
  Future<MultipleChoiceResponse> listMultipleChoice() {
    return client!.listMultipleChoice();
  }

  @override
  Future<DetailQuizResponse> detailQuiz({required String id}) {
    return client!.detailQuiz(id: id);
  }

  @override
  Future<ListDocumentResponse> listDocument() {
    return client!.listDocument();
  }

  @override
  Future<DetailDocumentResponse> detailDocument({required String id}) {
    return client!.detailDocument(id: id);
  }

  @override
  Future<DetailQuizResponse> detailQuizById({required String id}) {
    return client!.detailQuizById(id: id);
  }

  @override
  Future<ExamHistoryResponse> historyExame({
    required String multipleChoipleId,
    required String userId,
    required String scores,
    required int completionTime,
    required String starDate,
  }) {
    return client!.historyExame(
      multipleChoipleId: multipleChoipleId,
      userId: userId,
      completionTime: completionTime,
      scores: scores,
      starDate: starDate,
    );
  }

  @override
  Future<ListHistoryMyExam> getMyExamHistory() {
    return client!.getMyExamHistory();
  }

  @override
  Future<MultipleChoiceResponse> searchMultipleChoice(
      {required String keyword}) {
    return client!.searchMultipleChoice(keyword: keyword);
  }
}
