import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_flutter/base_screen.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/features/about_me/presentation/pages/about_me_page.dart';
import 'package:portfolio_flutter/features/bcc/presentation/pages/big_creek_construction_page.dart';
import 'package:portfolio_flutter/features/for_fun/presentation/pages/for_fun_page.dart';
import 'package:portfolio_flutter/features/home/presentation/pages/homepage.dart';
import 'package:portfolio_flutter/features/medvendor/presentation/pages/medvendor_page.dart';

void main() {
  final GoRouter router = GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return BaseScreen(child: child);
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => Homepage(),
          ),
          GoRoute(
            path: '/about',
            builder: (context, state) => AboutMePage(),
          ),
          GoRoute(
            path: '/forFun',
            builder: (context, state) => ForFunPage(),
          ),
          GoRoute(
            path: '/BigCreekConstructionMobileApp',
            builder: (context, state) => BigCreekConstructionPage(),
          ),
          GoRoute(
            path: '/MedVendor',
            builder: (context, state) => MedvendorPage(),
          ),
        ],
      ),
    ],
  );

  runApp(MyApp(
    router: router,
  ));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DummyBloc(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Appcolors.white,
        ),
      ),
    );
  }
}

class DummyBloc extends Cubit<int> {
  DummyBloc() : super(0);
}
