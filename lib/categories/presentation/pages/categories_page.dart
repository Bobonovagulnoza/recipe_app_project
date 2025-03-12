import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app_project1/categories/presentation/manager/categories_cubit.dart';
import 'package:recipe_app_project1/categories/presentation/manager/categories_state.dart';

import '../../../login/presentation/widgets/login_appbar_widget.dart';
import '../manager/categories_view_model.dart';
import '../widgets/category_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder< CategoriesBloc,CategoriesState>(
        builder: (context, state) => RefreshIndicator(
          onRefresh: () async => context.read<CategoriesBloc>().add(CategoriesLoading()),
              child: Scaffold(
                appBar: AppBarWidget(
                  title: "Categories",
                  leading: "assets/icons/back-arrow.svg",
                  firstAction: "assets/icons/notification.svg",
                  secondAction: 'assets/icons/search.svg',
                  leadingCallBack: () {},
                ),
                body: ListView(
                  children: [
                    CategoryItem(
                      image: state.mainCategory!.image,
                      title: state.mainCategory!.title,
                      isMain: true,
                    ),
                    SizedBox(height: 20),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        return CategoryItem(
                          image: state.categories[index].image,
                          title: state.categories[index].title,
                        );
                      },
                    ),
                  ],
                ),
              ),

            )

        );
  }
}
