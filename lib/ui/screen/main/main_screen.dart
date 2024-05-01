import 'package:flutter/material.dart';
import 'package:movies_flutter/routes/routes.dart';

import '../../components/components.dart';
import '../../theme/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MFColors.darkPurple,
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            MfButton(
              onTap: () {},
              width: 257,
              label: 'Login / Cadastre-se',
            ),
            const SizedBox(
              height: 16,
            ),
            MfButton(
              onTap: AppNavigator.to.home,
              width: 257,
              label: 'Acessar como visitante',
              backgroundColor: MFColors.ligthPurple,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Image.asset(
                    'lib/ui/assets/movies_logo_1.png',
                    height: 300,
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        MFColors.darkPurple.withOpacity(.9),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Center(
              child: Text(
                'FLUTTER MOVIES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 200,
              child: Center(
                child: Text(
                  'Acompanhe tudo sobre filmes de qualquer lugar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
