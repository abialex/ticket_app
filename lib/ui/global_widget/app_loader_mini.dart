import 'package:ticket_app/core/constants/app_const_svgs.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class AppLoaderMini extends StatelessWidget {
  final double height;
  const AppLoaderMini({super.key, this.height = 25});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppConstSvgs.logo,
      height: height,
      color: AppColors.slgPrincipal,
    )
        .animate(
          onPlay: (controller) => controller.loop(),
        )
        .rotate(
          duration: 1.25.seconds,
        );
  }
}
