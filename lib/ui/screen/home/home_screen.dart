import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MFColors.darkPurple,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Olá, Visitante!',
          style: TextStyle(
            color: MFColors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: MFColors.darkPurple,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Filtre por gênero',
              style: TextStyle(
                color: MFColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
