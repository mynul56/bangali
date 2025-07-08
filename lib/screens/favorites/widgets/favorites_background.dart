import 'package:flutter/material.dart';
import 'package:bangali_app_flutter_ui/config/colors.dart';

class FavoritesBackground extends StatelessWidget {
  const FavoritesBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            k2MainThemeColor,
            kWhite,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: size.height * 0.1,
            right: -size.width * 0.15,
            child: Container(
              width: size.width * 0.4,
              height: size.width * 0.4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: k3Pink.withOpacity(0.3),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.2,
            left: -size.width * 0.1,
            child: Container(
              width: size.width * 0.3,
              height: size.width * 0.3,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: k2AccentStroke.withOpacity(0.2),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
