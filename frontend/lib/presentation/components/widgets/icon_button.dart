import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/data/constants/colors.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.label,
    this.icon = '',
    this.horizontalPadding = 100,
    super.key,
  });

  final String label;
  final String icon;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: TextButton.styleFrom(
        minimumSize: const Size.fromHeight(60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: AppColors.borderColor, width: 3),
        ),
      ),
      icon: icon.isEmpty
          ? const SizedBox.shrink()
          : SvgPicture.asset(
              icon,
              width: 20,
              height: 20,
            ),
      label: Text(
        label,
        style: const TextStyle(
          color: AppColors.whiteColor,
          fontSize: 17,
        ),
      ),
    );
  }
}
