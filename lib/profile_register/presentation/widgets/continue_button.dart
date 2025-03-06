import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/routes.dart';
import '../../../core/utils/app_colors.dart';
import '../../../onboarding/presentation/widgets/elevatedbutton_widget.dart';

class continue_button extends StatelessWidget {
  const continue_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: elevatedbutton_widget(
        text: "Continue",
        onPressed: () {
          context.go(Routes.category_detail);
        },
        backgroundColor: AppColors.redPinkMain,
        textColor: AppColors.pink,
      ),
    );
  }
}
