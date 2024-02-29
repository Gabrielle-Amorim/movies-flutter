import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class MfButton extends StatelessWidget {
  const MfButton({
    required this.label,
    this.backgroundColor,
    super.key,
    this.width,
  });

  final String label;
  final Color? backgroundColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? MFColors.mediumPurple,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 50,
        width: width ?? MediaQuery.sizeOf(context).width,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
