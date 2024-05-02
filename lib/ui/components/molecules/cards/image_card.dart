import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../atoms/atoms.dart';

class MfImageCard extends StatelessWidget {
  const MfImageCard({
    super.key,
    required this.image,
    required this.text,
    this.secondaryText = '',
    this.onTap,
  });

  final String image;
  final String text;
  final String secondaryText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MfImageNetwork(
            url: image,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 150,
            height: 40,
            child: Text(
              text,
              style: TextStyle(color: MFColors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            secondaryText,
            style: TextStyle(color: MFColors.white),
          ),
        ],
      ),
    );
  }
}
