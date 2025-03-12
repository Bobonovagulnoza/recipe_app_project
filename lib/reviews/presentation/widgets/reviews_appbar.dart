// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:recipe_app_project1/reviews/presentation/widgets/reviws_bottom.dart';
//
// import '../../../core/utils/app_colors.dart';
// import 'bottom.dart';
//
// class ReviewsPage extends StatelessWidget {
//   const ReviewsPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         surfaceTintColor: Colors.transparent,
//         backgroundColor: AppColors.backgroundColor,
//         leading: Container(
//           padding: EdgeInsets.all(12),
//           child: SvgPicture.asset(
//             "assets/icons/vector.svg",
//             width: 30,
//             height: 14,
//           ),
//         ),
//         centerTitle: true,
//         title: Text(
//           "Reviews",
//           style: TextStyle(
//             color: AppColors.redPinkMain,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         bottom:AppBarBottom(),
//       ),
//
//       body: Column(
//         children: [
//            FoodInfo(),
//           Expanded(
//             child: ListView(
//               children: const [
//                 ReviewCard(
//                   username: '@r_joshua',
//                   timeAgo: '15 Mins Ago',
//                   rating: 4,
//                 ),
//                 ReviewCard(
//                   username: '@josh-ryan',
//                   timeAgo: '40 Mins Ago',
//                   rating: 3,
//                 ),
//                 ReviewCard(
//                   username: '@sweet.sarah',
//                   timeAgo: '1 Hr Ago',
//                   rating: 5,
//                 ),
//               ],
//             ),
//           ),
//           const BottomBar(),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app_project1/core/utils/app_colors.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Image.asset(
                    'assets/images/seafood.png',
                    height: 163,
                    width: 162,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chicken Burger',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [

                        // yulduzduzchalar
                        Text(
                          "456 Reviews",
                          style: TextStyle(
                              color:Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/ch1.png',
                            height:45,
                            width: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width:3,),
                        Text(
                          '@Andrew-Mar \nAndrew Martinez - Chef',
                          style: TextStyle(fontSize:13, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 23,
                        width: 130,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "Add Reviews",
                            style: TextStyle(
                                color:AppColors.redPinkMain,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
