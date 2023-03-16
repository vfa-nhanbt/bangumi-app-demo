import 'package:flutter/material.dart';

import '../../../config/app_dimensions.dart';
import '../../../config/app_styles.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
    required this.onIconTap,
  });

  final String title;
  final Function() onIconTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: AppDimensions.horizontalMargin),
        Text(
          title,
          style: AppStyles.listTitleStyle,
        ),
        const Spacer(),
        IconButton(
          onPressed: onIconTap,
          icon: const Icon(
            Icons.sort,
          ),
        ),
        SizedBox(width: AppDimensions.horizontalMargin),
      ],
    );
  }
}
