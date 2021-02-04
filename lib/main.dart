import 'package:super_rugby_fantasy/application/theme/theme_bloc.dart';
import 'package:super_rugby_fantasy/injection.dart';
import 'package:auto_route/auto_route.dart' as e;
import 'package:super_rugby_fantasy/application/auth/auth_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:super_rugby_fantasy/presentation/routes/router.gr.dart' as auto;
import 'package:super_rugby_fantasy/presentation/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  setupLocator();
  await Firebase.initializeApp();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                locator<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
        BlocProvider(create: (context) => locator<ThemeBloc>()),
      ],
      child: ProviderScope(
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: state.themeData,
              builder: e.ExtendedNavigator<auto.Router>(router: auto.Router()),
            );
          },
        ),
      ),
    );
  }
}
