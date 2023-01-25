import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../components/bottom_button.dart';
import '../../components/top_bar.dart';
import 'done_upload_photo.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  static const routeName = '/upload_photo';

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  int _value = 0;

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
              TopBar(text: 'Upload your photo', onTap: () => Navigator.pop(context),),
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
              InkWell(
                onTap: () {
                  setState(() {
                    _value = 1;
                  });
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _value == 1 ? primaryColor : const Color(0xFFEBEEF2),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        'Take a photo',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _value = 2;
                  });
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _value == 2 ? primaryColor : const Color(0xFFEBEEF2),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          child: const Icon(
                            Icons.folder,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        'From gallery',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              BottomButton(
                text: 'Next',
                opacity: _value != 0 ? 1 : 0.5,
                onTap: () =>
                    Navigator.pushNamed(context, DoneUploadPhoto.routeName),
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
