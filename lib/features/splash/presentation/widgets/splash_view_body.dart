import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    executeNavigation();
    super.initState();

  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        OnBoardingView.routeName,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
          ],
        ),
      ],
    );
  }
}
