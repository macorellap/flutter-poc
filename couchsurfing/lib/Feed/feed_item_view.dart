import 'package:flutter/material.dart';

class FeedItemView extends StatefulWidget {
  const FeedItemView({super.key});

  @override
  State<FeedItemView> createState() => _FeedItemViewState();
}

class _FeedItemViewState extends State<FeedItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Details')),
      body: const Text('Details view of post')
    );
  }
}