// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/team/player.dart';
import '../authenticate/login/login_screen.dart';
import '../authenticate/register/register_screen.dart';
import '../dashboard/dashboard.dart';
import '../post_registration/choose_players_page.dart';
import '../post_registration/create_team.dart';
import '../post_registration/player_profile_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String dashboardPage = '/dashboard-page';
  static const String loginScreen = '/login-screen';
  static const String registerScreen = '/register-screen';
  static const String createTeamPage = '/create-team-page';
  static const String choosePlayerPage = '/choose-player-page';
  static const String playerProfilePage = '/player-profile-page';
  static const String landingPage = '/';
  static const all = <String>{
    dashboardPage,
    loginScreen,
    registerScreen,
    createTeamPage,
    choosePlayerPage,
    playerProfilePage,
    landingPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.dashboardPage, page: DashboardPage),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.registerScreen, page: RegisterScreen),
    RouteDef(Routes.createTeamPage, page: CreateTeamPage),
    RouteDef(Routes.choosePlayerPage, page: ChoosePlayerPage),
    RouteDef(Routes.playerProfilePage, page: PlayerProfilePage),
    RouteDef(Routes.landingPage, page: LandingPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    DashboardPage: (data) {
      final args = data.getArgs<DashboardPageArguments>(
        orElse: () => DashboardPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => DashboardPage(key: args.key),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen(),
        settings: data,
      );
    },
    RegisterScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterScreen(),
        settings: data,
      );
    },
    CreateTeamPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateTeamPage(),
        settings: data,
      );
    },
    ChoosePlayerPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChoosePlayerPage(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    PlayerProfilePage: (data) {
      final args = data.getArgs<PlayerProfilePageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PlayerProfilePage(player: args.player),
        settings: data,
        fullscreenDialog: true,
      );
    },
    LandingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LandingPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushDashboardPage({
    Key key,
  }) =>
      push<dynamic>(
        Routes.dashboardPage,
        arguments: DashboardPageArguments(key: key),
      );

  Future<dynamic> pushLoginScreen() => push<dynamic>(Routes.loginScreen);

  Future<dynamic> pushRegisterScreen() => push<dynamic>(Routes.registerScreen);

  Future<dynamic> pushCreateTeamPage() => push<dynamic>(Routes.createTeamPage);

  Future<dynamic> pushChoosePlayerPage() =>
      push<dynamic>(Routes.choosePlayerPage);

  Future<dynamic> pushPlayerProfilePage({
    @required Player player,
  }) =>
      push<dynamic>(
        Routes.playerProfilePage,
        arguments: PlayerProfilePageArguments(player: player),
      );

  Future<dynamic> pushLandingPage() => push<dynamic>(Routes.landingPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DashboardPage arguments holder class
class DashboardPageArguments {
  final Key key;
  DashboardPageArguments({this.key});
}

/// PlayerProfilePage arguments holder class
class PlayerProfilePageArguments {
  final Player player;
  PlayerProfilePageArguments({@required this.player});
}
