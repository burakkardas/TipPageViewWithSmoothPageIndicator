import 'package:tip_app/Utility/Enums/app_image_enum.dart';
import 'package:tip_app/Utility/Enums/tip_enum.dart';
import 'package:tip_app/Utility/Extensions/app_image_extension.dart';

class Tips {
  static Map<TipEnum, TipModel> get tips => {
        TipEnum.tip01: TipModel(
          title: 'DISCOVER PLACE NEAR YOU',
          description:
              'We make it simple to find the food you crave. Enter you address and let us do rest.',
          imagePath: AppImageEnum.tip01.toAppImage,
        ),
        TipEnum.tip02: TipModel(
          title: 'CHOOSE A TASTY DISH',
          description:
              'When you order eat street we’ll hook you up with exclusive coupons, special discount and rewards.',
          imagePath: AppImageEnum.tip02.toAppImage,
        ),
        TipEnum.tip03: TipModel(
          title: 'PICK UP OR DELIVERY',
          description:
              'We make food ordering fast, simple and free no matter if you order online or cash.',
          imagePath: AppImageEnum.tip03.toAppImage,
        ),
      };
}

class TipModel {
  final String title;
  final String description;
  final String imagePath;

  TipModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}
