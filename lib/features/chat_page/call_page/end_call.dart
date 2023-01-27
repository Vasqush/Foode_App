import 'package:flutter/material.dart';
import 'package:foode_app/features/components/bottom_button.dart';
import 'package:foode_app/features/components/top_bar.dart';

import '../../../constants/constant.dart';
class EndCall extends StatefulWidget {
  const EndCall({Key? key}) : super(key: key);

  static const routeName = '/end_call';

  @override
  State<EndCall> createState() => _EndCallState();
}

class _EndCallState extends State<EndCall> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/foode_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                TopBar(text: '', onTap: () => Navigator.pop(context)),
                const SizedBox(
                  height: 105,
                ),
                Container(
                  width: 155,
                  height: 155,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/fresh_salad.png'),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Thank you! \nOrder completed',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: primaryColor,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 108,
                ),
                Text(
                  'Please rate the driver',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StarRating(
                      rating: rating,
                      onRatingChanged: (rating) =>
                          setState(() => this.rating = rating),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                    hintText: 'Leave feedback ...',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(color: primaryColor),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.edit),
                      color: primaryColor,
                      onPressed: (){},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                BottomButton(text: 'Submit', onTap: (){}),
                const SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;

  const StarRating(
      {super.key, this.starCount = 5, this.rating = .0, required this.onRatingChanged});

  Widget buildStar(BuildContext context, int index) {
    SizedBox icon;
    if (index >= rating) {
      icon = const SizedBox(
        width: 50,
        height: 50,
        child: Icon(
          Icons.star_border,
          color: primaryColor,
        ),
      );
    } else if (index > rating - 1 && index < rating) {
      icon = const SizedBox(
        width: 50,
        height: 50,
        child: Icon(
          Icons.star_half,
          color: primaryColor,
        ),
      );
    } else {
      icon = const SizedBox(
        width: 50,
        height: 50,
        child: Icon(
          Icons.star,
          color: primaryColor,
        ),
      );
    }
    return InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}
