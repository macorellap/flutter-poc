import 'package:couchsurfing/Feed/feed_item_view.dart';
import 'package:couchsurfing/ViewComponents/profile_image_view.dart';
import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int position) {
            return _buildRow(position);
          },
          separatorBuilder: (context, index) {
            return const Divider();
          }),
    );
  }

  Widget _buildRow(int i) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ListTile(
      title: Text('Post: $i. Post feed item'),
      leading: const ProfileImageSection(image: 'images/profilepicture.jpg'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FeedItemView()),
        );
      },
    ),
  );
}
}