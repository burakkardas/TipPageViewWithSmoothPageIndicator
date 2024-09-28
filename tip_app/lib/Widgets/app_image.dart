import 'package:flutter/material.dart';
import 'package:tip_app/Features/Tip/Model/TipModel.dart';

class AppImage extends StatelessWidget {
  const AppImage({super.key, required this.tipModel});

  final TipModel? tipModel;
  @override
  Widget build(BuildContext context) => Image.asset(
        tipModel?.imagePath ?? 'assets/images/tip01.png',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height * 0.3,
      );
}
