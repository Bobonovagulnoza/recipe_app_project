import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/widgets/recipe_bottom_navigation_bar.dart';
import '../../core/utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: Padding(
            padding: EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              'assets/icons/vector.svg',
              width: 24,
              height: 14,
            ),
          ),
          title: Text(
            '@Neil_tran',
            style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: AppColors.pink,
              radius: 14,
              child: SvgPicture.asset(
                'assets/icons/share.svg',
                colorFilter: ColorFilter.mode(AppColors.redPinkMain, BlendMode.srcIn),
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: AppColors.pink,
              radius: 14,
              child: SvgPicture.asset(
                'assets/icons/three_dots.svg',
                colorFilter: ColorFilter.mode(AppColors.redPinkMain, BlendMode.srcIn),
              ),
            ),
            SizedBox(width: 10),
          ],

        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 25),
                ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image(
                      image: AssetImage('assets/images/img_6.png'),
                      width: 102,
                      height: 97,
                    )),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Neil Tran-Chef',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      'Passionate chef in creative and \ncontemporary cuisine.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 81,
                      height: 18,
                      decoration: BoxDecoration(
                        color: AppColors.pink,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Following',
                          style: TextStyle(
                              color: AppColors.redPinkMain, fontSize: 10,fontWeight:FontWeight.w500 ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height:20),
            Container(
              width: 356,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.redPinkMain),
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('15\nRecipes', style: TextStyle(color: Colors.white)),
                  Text('10\nFollowing', style: TextStyle(color: Colors.white)),
                  Text('255.770\nFollowers',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: 10),

        Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.redPinkMain,
              tabs: [
                Tab(
                  child: Text(
                    "Recipes",
                    style: TextStyle(color: AppColors.redPinkMain),
                  ),
                ),
              ],
            ),
            SizedBox(height:25),

            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 356,
                  height: 103,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_12.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 5,
                  child: Container(
                    width: 346,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Vegan Recipes',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:25),

            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 356,
                  height: 103,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_13.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 5,
                  child: Container(
                    width: 346,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Asian Heritage',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:25),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 356,
                  height: 103,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_11.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 5,
                  child: Container(
                    width: 346,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Guilty Pleasures',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        ],
        ),
        bottomNavigationBar: RecipeBottomNavigationBar(),
      ),
    );
  }
}
