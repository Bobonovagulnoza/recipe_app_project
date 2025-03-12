// import 'package:flutter/cupertino.dart';
//
// class AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
//   const AppBarBottom({super.key});
//
//   Size get preferredSize => Size(double.infinity, 39);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal:15,
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20),
//         child: Container(
//           height: 223,
//           width: 430,
//           color: Color(0xfffd5d69),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app_project1/reviews/presentation/widgets/reviews_appbar.dart';

import '../../../core/utils/app_colors.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,

      appBar:  CustomAppBar(),
      body: Column(
        children: const [
          FoodInfo(),
          Expanded(
            child: ReviewList(),
          ),
        ],
      ),
      bottomNavigationBar:  BottomNavBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.backgroundColor,
      title:  Text(
        'Reviews',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {},
      ),
      centerTitle: true,
      // backgroundColor: Colors.redAccent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 281,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.redPinkMain,
              borderRadius: BorderRadius.circular(33),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/icons/home.svg"),
                SvgPicture.asset("assets/icons/community.svg"),
                SvgPicture.asset("assets/icons/categories.svg"),
                SvgPicture.asset("assets/icons/profile.svg"),

              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: const [
        ReviewCard(
          photo: "assets/icons/ch1.png",
          username: '@r_joshua',
          timeAgo: '15 Mins Ago',
          rating: 4,
        ),
        ReviewCard(
          photo: "assets/icons/ch1.png",
          username: '@josh-ryan',
          timeAgo: '40 Mins Ago',
          rating: 3,
        ),
        ReviewCard(
          photo: "assets/icons/ch1.png",
          username: '@sweet.sarah',
          timeAgo: '1 Hr Ago',
          rating: 5,
        ),
        ReviewCard(
          photo: "assets/icons/ch1.png",
          username: '@sweet.sarah',
          timeAgo: '1 Hr Ago',
          rating: 5,
        ),
        ReviewCard(
          photo: "assets/icons/ch1.png",
          username: '@sweet.sarah',
          timeAgo: '1 Hr Ago',
          rating: 5,
        ),
        ReviewCard(
          photo: "assets/icons/ch1.png",
          username: '@sweet.sarah',
          timeAgo: '1 Hr Ago',
          rating: 5,
        ),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String username;
  final String timeAgo,photo;
  final int rating;

  const ReviewCard({
    super.key,
    required this.username,
    required this.timeAgo,
    required this.rating,
    required this.photo
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image( photo,height: 163,
                  width: 162,
                  fit: BoxFit.cover,),
                Text(username, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                Text(timeAgo, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: List.generate(
                5,
                    (index) => Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
