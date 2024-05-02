import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../theme/colors.dart';

class MfChip extends StatelessWidget {
  factory MfChip.selected({
    required String label,
    required VoidCallback onTap,
    Key? key,
  }) {
    return MfChip._(
      label: label,
      bgColor: MFColors.white,
      textColor: MFColors.darkPurple,
      onTap: onTap,
      key: key,
    );
  }

  factory MfChip.unselected({
    required String label,
    required VoidCallback onTap,
    Key? key,
  }) {
    return MfChip._(
      label: label,
      bgColor: MFColors.darkPurple,
      textColor: MFColors.white,
      borderColor: MFColors.white,
      onTap: onTap,
      key: key,
    );
  }

  const MfChip._({
    required this.label,
    required this.bgColor,
    required this.textColor,
    this.borderColor,
    this.onTap,
    super.key,
  });

  final String label;
  final Color bgColor;
  final Color textColor;
  final Color? borderColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: Key('GestureDetector01-$key'),
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 70,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(24),
          border: borderColor != null ? Border.all(color: borderColor!) : null,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Text(
              label,
              style: TextStyle(
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}



  // const NsxAppButton._({
  //   required this.label,
  //   required this.size,
  //   required this.type,
  //   this.onTap,
  //   this.leftIcon,
  //   this.rightIcon,
  // });