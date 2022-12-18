import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detail Page"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue.withOpacity(0.5),
          ),
          child: MaterialButton(
            padding: EdgeInsets.zero,
            splashColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
              onPressed: () => context.go('/home_page'),
              child: const Text('Go back Home Page'),
          ),
        ),
      ),
    );
  }
}
