import 'package:flutter/material.dart';
import '../../../common/widgets/recipe_app_bar.dart';
import '../../../common/widgets/recipe_bottom_navigation_bar.dart';
import '../../../common/widgets/recipe_icon_button_container.dart';
import '../widgets/community_app_bar_bottom.dart';
import '../widgets/community_view_body.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: RecipeAppBar(
        title: "Community",
        actions: [
          RecipeIconButtonContainer(
            image: 'assets/icons/notification.svg',
            callback: () {},
            iconWidth: 14,
            iconHeight: 19,
          ),
          SizedBox(width: 5),
          RecipeIconButtonContainer(
            image: 'assets/icons/search.svg',
            callback: () {},
            iconWidth: 14,
            iconHeight: 19,
          ),
        ],
        bottom: CommunityAppBarBottom(),
      ),
      body: CommunityViewBody(),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}
