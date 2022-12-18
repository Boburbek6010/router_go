import 'package:flutter/material.dart';
import 'package:router_go/service/router_config.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterConfigService.router,
    );
  }
}
