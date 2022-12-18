import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:router_go/pages/about_page.dart';
import 'package:router_go/pages/detail_page.dart';
import 'package:router_go/pages/home_page.dart';

class RouterConfigService {
  static final GoRouter router = GoRouter(
    initialLocation: '/home_page',
    routes: [
      GoRoute(
        name: "home",
        path: "/home_page",
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: 'detail',
        path: "/detail_page",
        builder: (BuildContext context, GoRouterState state) {
          return const DetailPage();
        },
      ),
      GoRoute(
        name: 'about',
        path: "/about_page",
        builder: (BuildContext context, GoRouterState state) {
          return const AboutPage();
        },
      ),
    ]
  );
}

