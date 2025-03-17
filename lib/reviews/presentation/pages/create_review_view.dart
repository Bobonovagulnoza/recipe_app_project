import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../community/presentation/widgets/community_bootom_navigationbar.dart';
import '../../../core/utils/app_colors.dart';
import '../manager/create_review/create_review_bloc.dart';
import '../manager/create_review/create_review_setate.dart';
import '../widgets/recipe_appbar.dart';

class CreateReviewView extends StatelessWidget {
  const CreateReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: RecipeAppBar(title: "Leave A Review", actions: null),
      body: ListView(
        padding: EdgeInsets.fromLTRB(36.w, 0, 35.w, 120.h),
        children: [
          BlocBuilder<CreateReviewBloc, CreateReviewState>(
            builder: (context, state) => Column(
              spacing: 3,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    children: [
                      Container(
                        width: 356,
                        height: 262,
                        color: AppColors.pink,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 0, top: 0, bottom: 90),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage("assets/images/burger.png"),
                              height: 256,
                              width: 300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) {
                      return GestureDetector(
                        onTap: () => context.read<CreateReviewBloc>().add(
                              CreateReviewRate(currentIndex: index),
                            ),
                        child: SizedBox(
                          width: 29,
                          height: 29,
                          child: SvgPicture.asset(
                            "assets/icons/star-${index <= (state.currentIndex ?? -1) ? 'filled' : 'empty'}.svg",
                            colorFilter: ColorFilter.mode(
                                AppColors.redPinkMain, BlendMode.srcIn),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  "Your overall rating",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            minLines: 3,
            maxLines: 5,
            style: TextStyle(
              color: AppColors.beigeColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              hintText: "Leave us Review",
              hintStyle: TextStyle(
                color: AppColors.beigeColor.withValues(alpha: 0.45),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              filled: true,
              fillColor: AppColors.pink,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.pink,
                ),
                color: AppColors.redPinkMain,
                onPressed: () {},
                iconSize: 21,
                icon: Icon(Icons.add),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Add Photo",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Do you recommend this recipe?",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "No",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(width: 5,),
              Image.asset("assets/icons/no.svg"),
              SizedBox(width: 90),
              Text(
                "Yes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(width: 5,),
              Image.asset("assets/icons/no.svg"),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  height: 29,
                  width: 150,
                  color: AppColors.pink,
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: AppColors.redPinkMain,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  height: 29,
                  width: 150,
                  color: AppColors.redPinkMain,
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}
