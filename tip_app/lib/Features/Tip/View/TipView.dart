import 'package:flutter/material.dart';
import 'package:tip_app/Features/Tip/Model/TipModel.dart';
import 'package:tip_app/Features/Tip/Widgets/tip_text_view.dart';
import 'package:tip_app/Widgets/app_image.dart';

class TipView extends StatelessWidget {
  const TipView({super.key, required this.tipModel});

  final TipModel tipModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 130),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 2, child: AppImage(tipModel: tipModel)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Expanded(flex: 2, child: TipTextView(tipModel: tipModel)),
        ],
      ),
    );
  }
}
