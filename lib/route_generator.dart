import 'package:flutter/material.dart';
import 'models/post/response/add_post_response.dart';

import 'models/user/response/user_response.dart';
import 'screens/change_pass_screen/change_pass_screen.dart';
import 'screens/create_post_screen/create_post_screen.dart';
import 'screens/detail_post_screen/detail_post_screen.dart';
import 'screens/detail_post_screen/submit/comment/comment_box.dart';
import 'screens/edit_post_screen/edit_post_screen.dart';
import 'screens/errors_screen/not_found_screen.dart';
import 'screens/forum_question_screen/create_question/create_question_screen.dart';
import 'screens/forum_question_screen/detail_question/detail_question.dart';
import 'screens/forum_question_screen/question_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/login_screen/mobile/login_screen.dart';

import 'screens/main_screen/main_screen.dart';
import 'screens/quiz_screen/quiz_screnn.dart';
import 'screens/register_screen/register_screen.dart';

import 'screens/discover_sceen/discover_screen.dart';
import 'screens/report_post_screen/report_post_screen.dart';
import 'screens/signup_screen/signup_screen.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'screens/user_screen/account_settings_screen.dart';
import 'screens/user_screen/sub/update_profile_screen.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String loginScreen = '/provider';
  static const String registerScreen = '/register_screen';
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
      case signupScreen:
        return MaterialPageRoute(
            builder: (context) => SignUpScreen.provider(), settings: settings);
      case registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
          settings: settings,
        );
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
          builder: (context) => const QuizScreen(),
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

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundScreen(),
          settings: settings,
        );
    }
  }
}
