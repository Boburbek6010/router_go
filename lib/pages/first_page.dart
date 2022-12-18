import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     backgroundColor: Colors.brown.withOpacity(0.3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text("1 - Page", style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w700,
            shadows: [
              Shadow(
                color: Colors.blueAccent,
                offset: Offset(3, 3),
                blurRadius: 0,
              )
            ]
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 120,
                width: 110,
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
                  onPressed: () => context.go("/main_page"),
                  child: const Text('  1 - Page'),
                ),
              ),
              Container(
                height: 120,
                width: 110,
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
                  onPressed: () => context.go('/main_page'),
                  child: const Text('  2 - Page'),
                ),
              ),
              Container(
                height: 120,
                width: 110,
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
                  onPressed: () => context.go('/main_page'),
                  child: const Text('  3 - Page'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
