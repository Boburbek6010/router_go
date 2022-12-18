import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ?
    final List<Widget> items = [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue.withOpacity(0.6),
        ),
        child: MaterialButton(
          padding: EdgeInsets.zero,
          splashColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () => context.go("/detail_page"),
          child: const Text('Detail Page as  [go]'),
        ),
      ),
      const SizedBox(
        height: 100,
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue.withOpacity(0.6),
        ),
        child: MaterialButton(
          padding: EdgeInsets.zero,
          splashColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () => context.pushNamed('about'),
          child: const Text('About Page as  [pushNamed]'),
        ),
      ),
    ];
// ?
    // for(int i = 0; i < 4; i++){
    //   items.add(ItemWidget(onPressed: () => context.pushNamed('detail')));
    // }

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 50),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return items[index];
        },
      ),
    );
  }
}
