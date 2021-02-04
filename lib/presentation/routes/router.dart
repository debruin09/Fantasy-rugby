import 'package:auto_route/auto_route_annotations.dart';
import 'package:super_rugby_fantasy/presentation/authenticate/login/login_screen.dart';
import 'package:super_rugby_fantasy/presentation/authenticate/register/register_screen.dart';
import 'package:super_rugby_fantasy/presentation/dashboard/dashboard.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/choose_players_page.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/create_team.dart';
import 'package:super_rugby_fantasy/presentation/post_registration/player_profile_page.dart';
import 'package:super_rugby_fantasy/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: DashboardPage),
      MaterialRoute(page: LoginScreen),
      MaterialRoute(page: RegisterScreen),
      MaterialRoute(page: CreateTeamPage),
      MaterialRoute(page: ChoosePlayerPage, fullscreenDialog: true),
      MaterialRoute(page: PlayerProfilePage, fullscreenDialog: true),
      MaterialRoute(page: LandingPage, initial: true),
    ])
class $Router {}
