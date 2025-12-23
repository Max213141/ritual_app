import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:ritual_app/screens/intro_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/localization/app_localizations.dart';
import 'package:ritual_app/utils/utils.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<IntroScreenPart> slides = [];

  @override
  void initState() {
    super.initState();
  }

  void onDonePress() {
    context.replace('/initial_page');
  }

  void onSkipPress() {
    context.replace('/initial_page');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    createSlides(l10n);
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: IntroSlider(
          indicatorConfig: IndicatorConfig(
            isShowIndicator: true,
            sizeIndicator: 13,
            indicatorWidget: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                shape: BoxShape.circle,
              ),
            ),
            activeIndicatorWidget: Container(
              width: 26,
              height: 13,
              decoration: BoxDecoration(
                color: Theme.of(context).indicatorColor,

                borderRadius: BorderRadius.circular(10),
                //color: AppColor.primaryBackgroundColor,
              ),
            ),
            spaceBetweenIndicator: 15,
            typeIndicatorAnimation: TypeIndicatorAnimation.sliding,
          ),

          listCustomTabs: slides,
          onDonePress: onDonePress,
          onSkipPress: onSkipPress,
          doneButtonStyle:
              const ButtonStyle(splashFactory: NoSplash.splashFactory),
          nextButtonStyle:
              const ButtonStyle(splashFactory: NoSplash.splashFactory),
          skipButtonStyle: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            // minimumSize: WidgetStateProperty.all<Size?>(
            //   const Size(70, 50),
            // ),
            maximumSize: WidgetStateProperty.all<Size?>(
              const Size(200, 70),
            ),
          ),
          renderNextBtn: const NextButton(),
          renderDoneBtn: const DoneButton(),
          renderSkipBtn: const SkipButton(),
          isShowSkipBtn: true,
          isShowPrevBtn: false,

          // renderSkipBtn: this.renderSkipBtn(),
        ),
      ),
    );
  }

  createSlides(AppLocalizations l10n) {
    slides.addAll(
      [
        IntroScreenPart(
          text: l10n.firstIntroSlide,
          image: 'assets/intro/first_slide.svg',
          // providedChild: RichText(
          //     text: TextSpan(children: [
          //   TextSpan(
          //     text: '${l10n.welcome}, \n',
          //     style: MentalHealthTextStyles.text.signikaFontF24,
          //   ),
          //   TextSpan(
          //     text: '${l10n.appTitle} \n',
          //     style: MentalHealthTextStyles.text.signikaFontF24Green,
          //   ),
          //   TextSpan(
          //     text: '${l10n.firstIntroSlidePart1} \n',
          //     style: MentalHealthTextStyles.text.signikaFontF24,
          //   ),
          //   TextSpan(
          //     text: '${l10n.firstIntroSlidePart2}',
          //     style: MentalHealthTextStyles.text.signikaFontF24,
          //   ),
          // ])),
        ),
        IntroScreenPart(
          text: l10n.secondIntroSlide,
          image: 'assets/intro/second_slide.svg',
        ),
        IntroScreenPart(
          text: l10n.thirdIntroSlide,
          image: 'assets/intro/third_slide.svg',
        ),
        // IntroScreenPart(
        //   text: l10n.forthIntroSlide,
        //   image: 'assets/intro/forth_slide.svg',
        // ),
      ],
    );
  }
}
