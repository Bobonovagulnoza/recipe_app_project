import 'package:flutter/material.dart';
import '../../../../core/colors.dart';
class RecipeElevatedButton extends StatelessWidget {
  const RecipeElevatedButton({
    super.key,
    required this.text,
    required this.callback,
    this.backgroundColor = AppColors.pink,
    this.foregroundColor = AppColors.pinkSub,
    required this.size,
    this.fontSize = 15,
  });

  final String text;
  final Color backgroundColor, foregroundColor;
  final Size size;
  final double fontSize;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
