import 'package:flutter/material.dart';
import 'strings.dart' as strings;
import 'Profile/profile_view.dart';
import 'Feed/feed_view.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length:  2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(strings.appTitle),
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(text: strings.feed),
              Tab(text: strings.profile)
            ],
          ),
          body: const TabBarView(
            children: [
              FeedView(),
              ProfileView()
            ],
          ),
        ),
      ),
    );
  }
}
