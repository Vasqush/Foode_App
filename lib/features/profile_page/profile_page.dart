import 'package:flutter/material.dart';
import 'package:foode_app/features/profile_page/widget/panel_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: MediaQuery.of(context).size.height * 0.5,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/profile.png'),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
      ),
    );
  }
}
