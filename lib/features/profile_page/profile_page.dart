import 'package:flutter/material.dart';

import '../components/top_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70,),
          TopBar(text: 'Profile Page', onTap: () {},)
        ],
      ),
    );
  }
}

