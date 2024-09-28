import 'package:flutter/material.dart';
import 'package:tip_app/Features/Tip/Model/TipModel.dart';
import 'package:tip_app/Features/Tip/View/TipView.dart';
import 'package:tip_app/Utility/Enums/app_image_enum.dart';
import 'package:tip_app/Utility/Extensions/app_image_extension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TipBaseView extends StatelessWidget {
  const TipBaseView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImageEnum.tipBackground.toAppImage),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: pageController,
                children: [
                  for (TipModel tip in Tips.tips.values) TipView(tipModel: tip),
                ],
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: Tips.tips.length,
                effect: ExpandingDotsEffect(
                  dotColor: Theme.of(context).disabledColor,
                  activeDotColor: Theme.of(context).primaryColor,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
