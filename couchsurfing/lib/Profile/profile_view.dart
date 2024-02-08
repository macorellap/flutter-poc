import 'package:couchsurfing/ViewComponents/profile_image_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    super.key
  });

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ProfileImageSection(image: 'images/profilepicture.jpg'),
          Text('Marco Corella'),
        ],
      ),
    );
  }
}