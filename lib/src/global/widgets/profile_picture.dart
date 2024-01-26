import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savart_remaster/src/feature/profile/views/profile.dart';
import 'package:savart_remaster/src/resource/assets.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    const size = 40.0;
    return InkWell(
      onTap: (){
        context.push(ProfileView.route);
      },
      child: Container(
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        height: size,
        width: size,
        child: ClipOval(
          child: Image.asset(
            ImageAssets.profile,
          ),
        ),
      ),
    );
  }
}
