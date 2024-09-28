import 'package:flutter/material.dart';
import 'package:tip_app/Features/Tip/Model/TipModel.dart';

class TipTextView extends StatelessWidget {
  const TipTextView({super.key, required this.tipModel});

  final TipModel? tipModel;
  @override
  Widget build(BuildContext context) => Column(
        children: [
          Text(
            tipModel?.title ?? 'Title',
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            tipModel?.description ?? 'Description',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).disabledColor,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      );
}
