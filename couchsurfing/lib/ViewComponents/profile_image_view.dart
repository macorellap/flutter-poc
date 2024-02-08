import 'package:flutter/material.dart';

class ProfileImageSection extends StatelessWidget {
  const ProfileImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {

    return Container(
            width: 100,
            height: 100,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: 
              Image.asset(
                image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              )
          );
  }
}