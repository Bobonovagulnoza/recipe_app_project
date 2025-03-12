import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../manager/recipe_community_view_model.dart';
import '../widgets/recipe_community_app_bar.dart';
import '../widgets/community_bootom_navigationbar.dart';
import '../widgets/community_recipe_widget.dart';

class RecipeCommunityTopView extends StatefulWidget {
  // final CommunityTopViewModel vm;

  const RecipeCommunityTopView({super.key});

  @override
  State<RecipeCommunityTopView> createState() => _RecipeCommunityTopViewState();
}

class _RecipeCommunityTopViewState extends State<RecipeCommunityTopView> {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RecipeCommunityTopViewModel>();
    // print(widget.vm);
    return Scaffold(
      appBar: RecipeCommunityAppBar(
        backTap: () {
          context.pop();
        },
        action1Tap: () {},
        action2Tap: () {},
        action1: "assets/svg/notification.svg",
        action2: "assets/svg/search.svg",
        title: "Community",
      ),
      bottomNavigationBar: RecipeBottomNavigationBar(),
      extendBody: true,
      body: ListenableBuilder(
          listenable: vm,
          builder: (context, child) {
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemCount: vm.communityRecipes.length,
              separatorBuilder: (context, index) => SizedBox(
                height: 15,
              ),
              itemBuilder: (context, index) => Center(
                child: RecipeWidgetCommunity(
                  model: vm.communityRecipes[index],
                  created: vm.sinceCreated(model: vm.communityRecipes[index]), index: index,
                ),
              ),
            );
          }),
    );
  }
}
