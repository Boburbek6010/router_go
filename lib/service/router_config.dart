import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:router_go/pages/second_page.dart';
import 'package:router_go/pages/first_page.dart';
import 'package:router_go/pages/home_page.dart';
import 'package:router_go/pages/third_page.dart';
import 'package:router_go/pages/main_page.dart';

class RouterConfigService {
  static final GoRouter router = GoRouter(
    initialLocation: '/main_page',
    routes: [
      GoRoute(
        name: "third",
        path: "/third_page",
        builder: (BuildContext context, GoRouterState state) {
          return const ThirdPage();
        },
      ),
      GoRoute(
        name: "main",
        path: "/main_page",
        builder: (BuildContext context, GoRouterState state) {
          return const MainPage();
        },
      ),
      GoRoute(
        name: "home",
        path: "/home_page",
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: 'first',
        path: "/first_page",
        builder: (BuildContext context, GoRouterState state) {
          return const FirstPage();
        },
      ),
      GoRoute(
        name: 'second',
        path: "/second_page",
        builder: (BuildContext context, GoRouterState state) {
          return const SecondPage();
        },
      ),
    ]
  );
}

