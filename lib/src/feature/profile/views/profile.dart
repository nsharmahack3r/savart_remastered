import 'package:flutter/material.dart';
import 'package:savart_remaster/src/resource/assets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const route = "/profile";

  @override
  Widget build(BuildContext context) {
    const size = 100.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(size / 2),
                  ),
                  height: size,
                  width: size,
                  child: ClipOval(
                    child: Image.asset(
                      ImageAssets.profile,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User Name",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "User ID : 4567",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            _profileOption(
              title: "KYC",
              iconData: Icons.qr_code_scanner
            ),
            _profileOption(
              title: "Personal Profile",
              iconData: Icons.account_box
            ),
            _profileOption(
              title: "Investment Profile",
              iconData: Icons.money
            ),
             _profileOption(
              title: "Goal Manager",
              iconData: Icons.flag
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileOption({
    required String title,
    required IconData iconData,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(width: 15.0,),
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}
