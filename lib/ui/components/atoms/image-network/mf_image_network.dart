import 'package:flutter/material.dart';

class MfImageNetwork extends StatelessWidget {
  const MfImageNetwork({
    super.key,
    required this.url,
    this.width,
    this.height,
  });

  final String url;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 100,
      height: height ?? 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
