import 'package:flutter/material.dart';
import 'package:foode_app/features/authentication/register/set_location.dart';

import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../../components/top_bar.dart';

class DoneUploadPhoto extends StatefulWidget {
  const DoneUploadPhoto({Key? key}) : super(key: key);

  static const routeName = 'done_upload_photo';

  @override
  State<DoneUploadPhoto> createState() => _DoneUploadPhotoState();
}

class _DoneUploadPhotoState extends State<DoneUploadPhoto> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              TopBar(
                text: 'Upload your photo',
                onTap: () => Navigator.pop(context),
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                height: 250,
                child: Stack(
                  children: const [
                    CircleAvatar(
                      foregroundImage: AssetImage('assets/images/avartar.png'),
                      maxRadius: double.infinity,
                    ),
                    Positioned(
                      width: 50,
                      height: 50,
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              BottomButton(
                text: 'Next',
                onTap: () => Navigator.pushNamed(context, SetLocation.routeName),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
