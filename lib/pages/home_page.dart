import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  var pages = [
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.camera_alt_outlined),
          color: Colors.grey,
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.live_tv,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(  
                CupertinoIcons.paperplane,
                color: Colors.grey,
              )),
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(
            () {
              currentPage = i;
            },
          );
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Feed'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Upload'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Likes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
