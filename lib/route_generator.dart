import 'package:flutter/material.dart';
import 'models/post/response/add_post_response.dart';

import 'models/user/response/user_response.dart';
import 'screens/change_pass_screen/change_pass_screen.dart';
import 'screens/create_post_screen/create_post_screen.dart';
import 'screens/detail_post_screen/detail_post_screen.dart';
import 'screens/detail_post_screen/submit/comment/comment_box.dart';
import 'screens/detail_post_screen/submit/comment/submit/edit_comment.dart';
import 'screens/document_screen/detail_document/detail_document_screen.dart';
import 'screens/document_screen/document_screen.dart';
import 'screens/edit_post_screen/edit_post_screen.dart';
import 'screens/errors_screen/not_found_screen.dart';
import 'screens/forgot_pass_screen/forgot_pass_screen.dart';
import 'screens/forgot_pass_screen/otp_verify_screen.dart';
import 'screens/forgot_pass_screen/reset_pass_screen.dart';
import 'screens/forum_question_screen/create_question/create_question_screen.dart';
import 'screens/forum_question_screen/detail_question/detail_question.dart';
import 'screens/forum_question_screen/detail_question/submit/update_question.dart';
import 'screens/forum_question_screen/edit_answer/edit_answer_screen.dart';
import 'screens/forum_question_screen/question_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/login_screen/mobile/login_screen.dart';
import '../../../../models/question/response/questionresponse.dart'
    as questionData;
import 'models/multiplechoice/response/detail_quiz_response.dart' as quizData;
import 'screens/main_screen/main_screen.dart';
import 'screens/news_screen/news_screen.dart';
import 'screens/quiz_screen/quiz_detail/quiz_detail_screen.dart';
import 'screens/quiz_screen/quiz_reslut/answer_check_screen.dart';
import 'screens/quiz_screen/quiz_reslut/result_screen.dart';
import 'screens/quiz_screen/quiz_screen.dart';

import 'screens/discover_sceen/discover_screen.dart';
import 'screens/quiz_screen/start_quiz/start_quiz_screen.dart';
import 'screens/quiz_screen/widget/quiz_overview_screen.dart';
import 'screens/report_post_screen/report_post_screen.dart';
import 'screens/signup_screen/signup_screen.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'screens/user_screen/account_settings_screen.dart';
import 'screens/user_screen/sub/update_profile_screen.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String loginScreen = '/provider';

  static const String homeScreen = '/home_screen';
  static const String mainScreen = '/main_screen';
  static const String discoverScreen = 'discover_screen';
  static const String signupScreen = '/signup_screen';
  static const String accounsettingsScreen = '/account_settings_screen';
  static const String updateProfileScreen = '/update_profile_screen';
  static const String changePassScreen = '/change_pass_screen';
  static const String createPostScreen = '/create_post_screen';
  static const String detailPostScreen = '/detail_post_screen';
  static const String reportPostScreen = '/report_post_screen';
  static const String editPostScreen = '/edit_post_screen';
  static const String quizScreen = '/quiz_screen';
  static const String commentScreen = '/comment_screen';
  static const String questionScreen = '/question_screen ';
  static const String createQuestionScreen = '/create_question_screen';
  static const String detailQuestionScreen = '/detail_question_screen';
  static const String editCommnetScreen = '/edit_comment';
  static const String updateQuestionScreen = '/update_question_screen';
  static const String documentScreen = '/document_screen';
  static const String editAnswerScreen = '/edit_answer_screen';

  static const String forgotPassScreen = '/forgot_pass_screen';
  static const String otpVerifyScreen = '/otp_verify_screen';
  static const String resetPassScreen = '/reset_pass_screen';
  static const String newsScreen = '/news_screen';
  static const String detailDocumentScreen = '/detail_document_screen';
  static const String quizDetailScreen = '/quiz_detail_screen';

  static const String startQuizScreen = '/start_quiz_screen';
  static const String quizOverView = '/quiz_overview_screen';
  static const String resultQuizScreen = '/result_screen';
  static const String answerCheckScreen = '/answer_check_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SplashScreen.provider(),
          settings: settings,
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen.provider(),
          settings: settings,
        );

      case otpVerifyScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final otp = args!['otp'] as String;
        final email = args['email'] as String;
        return MaterialPageRoute(
            builder: (context) => OTPVerifyScreen.provider(
                  otp: otp,
                  email: email,
                ),
            settings: settings);

      case resetPassScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final token = args!['token'] as String;
        return MaterialPageRoute(
            builder: (context) => ResetPassScreen.provider(token: token),
            settings: settings);

      case forgotPassScreen:
        return MaterialPageRoute(
            builder: (context) => ForgotPassScreen.provider(),
            settings: settings);

      case signupScreen:
        return MaterialPageRoute(
            builder: (context) => SignUpScreen.provider(), settings: settings);

      case changePassScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final email = args!['Email'] as String;
        return MaterialPageRoute(
            builder: (context) => ChangePasswordScreen.provider(email: email),
            settings: settings);
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: settings,
        );
      case accounsettingsScreen:
        return MaterialPageRoute(
          builder: (context) => AccountSettingsScreen.provider(),
          settings: settings,
        );
      case updateProfileScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final userDetail = args!['UserDetail'] as User;
        return MaterialPageRoute(
          builder: (context) =>
              UpdateProfileScreen.provider(userDetail: userDetail),
          settings: settings,
        );
      case createPostScreen:
        return MaterialPageRoute(
          builder: (context) => CreatePostScreen.provider(),
          settings: settings,
        );
      case detailPostScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final postId = args!['PostId'] as String;
        final userId = args['UserId'] as String;

        return MaterialPageRoute(
          builder: (context) =>
              DetailPostScreen.provider(subId: postId, userId: userId),
          settings: settings,
        );
      case mainScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final currentIndex = args!['currentIndex'] as int;
        return MaterialPageRoute(
            builder: (context) => MainScreen(
                  currentIndex: currentIndex,
                ),
            settings: settings);
      case discoverScreen:
        return MaterialPageRoute(
            builder: (context) => DiscoverScreen.provider(),
            settings: settings);
      case reportPostScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final postDetail = args!['PostDetail'] as ResultObj;
        return MaterialPageRoute(
            builder: (context) => ReportPortSCreen.provider(
                  resultObj: postDetail,
                ),
            settings: settings);
      case editPostScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final data = args!['Data'] as ResultObj;

        return MaterialPageRoute(
          builder: (context) => EditPostScreen.provider(data: data),
          settings: settings,
        );
      case quizScreen:
        return MaterialPageRoute(
          builder: (context) => QuizScreen.provider(),
          settings: settings,
        );
      case commentScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final postId = args!['PostId'] as String;
        return MaterialPageRoute(
          builder: (context) => CommentScreen.provider(
            postId: postId,
          ),
          settings: settings,
        );
      case questionScreen:
        return MaterialPageRoute(
          builder: (context) => QuestionScreen.provider(),
          settings: settings,
        );
      case createQuestionScreen:
        return MaterialPageRoute(
          builder: (context) => CreateQuestionScreen.provider(),
          settings: settings,
        );

      case detailQuestionScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final subId = args!['subId'] as String;
        final id = args['id'] as String;
        return MaterialPageRoute(
          builder: (context) =>
              DetailQuestionScreen.provider(subId: subId, id: id),
          settings: settings,
        );

      case updateQuestionScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final data = args!['data'] as questionData.QuestionResponse;
        return MaterialPageRoute(
          builder: (context) => UpdateQuestionScreen.provider(data: data),
          settings: settings,
        );

      case documentScreen:
        return MaterialPageRoute(
          builder: (context) => DocumentScreen.provider(),
          settings: settings,
        );

      case editCommnetScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final id = args!['id'] as String;
        final postId = args['postId'] as String;
        final content = args['content'] as String;
        final url = args['url'] as String;
        final fullname = args['fullname'] as String;
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              EditCommentScreen.provider(
                  id: id,
                  postId: postId,
                  content: content,
                  url: url,
                  fullname: fullname),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        );

      case newsScreen:
        return MaterialPageRoute(
          builder: (context) => NewsScreen.provider(),
          settings: settings,
        );

      case detailDocumentScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final idDoc = args!['idDoc'] as String;
        return MaterialPageRoute(
          builder: (context) => DetailDocumentScreen.provider(idDoc: idDoc),
          settings: settings,
        );

      case editAnswerScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final questionId = args!['questionId'] as String;
        final answerId = args['answerId'] as String;
        final content = args['content'] as String;
        final url = args['url'] as String;
        final authorId = args['authorId'] as String;
        final isSubAnswer = args['isSubAnswer'] as bool;
        final fullname = args['fullname'] as String;
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              EditAnswerScreen.provider(
            isSubAnswer: isSubAnswer,
            questionId: questionId,
            answerId: answerId,
            content: content,
            url: url,
            fullname: fullname,
            authorId: authorId,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        );

      case quizDetailScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final id = args!['id'] as String;
        return MaterialPageRoute(
          builder: (context) => QuizDetailScreen.provider(id: id),
          settings: settings,
        );

      case startQuizScreen:
        return MaterialPageRoute(
          builder: (context) => const StartQuizzScreen(),
          settings: settings,
        );
      case quizOverView:
        return MaterialPageRoute(
          builder: (context) => const QuizOverViewScreen(),
          settings: settings,
        );

      case resultQuizScreen:
        return MaterialPageRoute(
          builder: (context) => const Resultcreen(),
          settings: settings,
        );
      case answerCheckScreen:
        return MaterialPageRoute(
          builder: (context) => const AnswersCheckScreen(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundScreen(),
          settings: settings,
        );
    }
  }
}
