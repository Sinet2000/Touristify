import 'package:flutter/cupertino.dart';
import 'package:touristify/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  double height;

  ResponsiveButton({
    super.key,
    this.width,
    this.isResponsive = false,
    this.height = 60});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.buttonBackgroundBlack
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8), // Top: 8, Right: 16, Bottom: 8, Left: 16
              child: Image.asset("img/right-arrow.png")
          )
        ],
      ),
    );
  }
}
