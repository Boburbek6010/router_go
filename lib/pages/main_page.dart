import 'package:flutter/material.dart';
import 'package:router_go/pages/second_page.dart';
import 'package:router_go/pages/first_page.dart';
import 'package:router_go/pages/third_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    int currentIndex = 0;
    final PageController pageController = PageController();

    void onItemTapped(int index){
      setState(() {
        currentIndex = index;
      });
      pageController.jumpToPage(index);
    }

    final pages = <Widget>[
      const FirstPage(),
      const SecondPage(),
      const ThirdPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
        centerTitle: true,
      ),
      body: PageView(
        onPageChanged: (page){
          setState(() {
            currentIndex = page;
          });
        },
        controller: pageController,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one_rounded),
            label: "1-Page",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: "2-Page",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.three_k),
            label: "3-Page",
          ),
        ],
      ),
    );
  }
}
