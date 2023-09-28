import 'package:flutter/material.dart';
import 'package:hedi_s_application2/presentation/signup_screen/signup_screen.dart';
import 'package:hedi_s_application2/presentation/intro_screen/intro_screen.dart';
import 'package:hedi_s_application2/presentation/login_screen/login_screen.dart';
import 'package:hedi_s_application2/presentation/welcome_page_container_screen/welcome_page_container_screen.dart';
import 'package:hedi_s_application2/presentation/course_details_screen/course_details_screen.dart';
import 'package:hedi_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signupScreen = '/signup_screen';

  static const String introScreen = '/intro_screen';

  static const String loginScreen = '/login_screen';

  static const String welcomePage = '/welcome_page';

  static const String welcomePageContainerScreen =
      '/welcome_page_container_screen';

  static const String courseDetailsScreen = '/course_details_screen';

  static const String profilePage = '/profile_page';

  static const String ourProgramPage = '/our_program_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signupScreen: (context) => SignupScreen(),
    introScreen: (context) => IntroScreen(),
    loginScreen: (context) => LoginScreen(),
    welcomePageContainerScreen: (context) => WelcomePageContainerScreen(),
    courseDetailsScreen: (context) => CourseDetailsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
