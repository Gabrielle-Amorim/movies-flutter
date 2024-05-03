import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class MfLoading extends StatelessWidget {
  const MfLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: MFColors.ligthPurple,
      ),
    );
  }
}
