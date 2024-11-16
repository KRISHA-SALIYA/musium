import 'package:flutter/material.dart';
import 'package:musium/presetations/explorePage/explorePage.dart';
import 'package:musium/presetations/folderPage/folderPage.dart';
import 'package:musium/presetations/homePage/home_page.dart';
import 'package:musium/presetations/libraryPage/libraryPage.dart';
import 'package:musium/presetations/logInPage/login_page.dart';
import 'package:musium/presetations/playlistPage/playlistPage.dart';
import 'package:musium/presetations/splashPage/splash_page.dart';
import 'package:musium/presetations/signUpPage/signup_page.dart';
import 'package:musium/presetations/welcomePage/welcomePage.dart';

class AppRoutes {
  String splash = '/';
  String logIn = 'login';
  String welcome = 'welcome';
  String signUp = 'signup';
  String home = 'home';
  String explore = 'explore';
  String library = 'library';
  String folder = 'folder';
  String playlist = 'playlist';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const SplashPage(),
    'welcome': (context) => const welcomePage(),
    'login': (context) => LogInPage(),
    'signup': (context) => SignUpPage(),
    'home': (context) => const HomePage(),
    'explore': (context) => const ExplorePage(),
    'library': (context) => const Librarypage(),
    'folder': (context) => const FolderPage(),
    'playlist': (context) => const PlaylistPage(),
  };
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();
}
