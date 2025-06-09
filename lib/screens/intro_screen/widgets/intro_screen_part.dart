import 'package:flutter/material.dart';
// import 'package:ritual_app/utils/styles/styles.dart';
import 'package:ritual_app/utils/utils.dart';

class IntroScreenPart extends StatelessWidget {
  final String image;
  final String text;
  final bool useProvidedChild;
  final Widget? providedChild;

  const IntroScreenPart({
    super.key,
    required this.text,
    required this.image,
    this.useProvidedChild = false,
    this.providedChild,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 54.0, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.height / 3,
            height: size.height / 3,
            child: RitualAppSvgPicture(
              picture: image,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 120),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
