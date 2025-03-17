// import 'package:recipe_app_project1/reviews/data/models/recipe_review_user_model.dart';
//
// // class RecipeReviewModel{
// //   final int id,rating,reviewsCount;
// //   final String title;
// //   final  RecipeReviewUserModel user;
// //   RecipeReviewModel({
// //     required this.id,
// //     required this.rating,
// //     required this.reviewsCount,
// //     required this.title,
// //     required this.user
// // });
// //   factory RecipeReviewModel.fromJson(Map<String, dynamic> json) {
// //     return RecipeReviewModel(
// //       id: json["id"] ?? 0,
// //       rating: json["rating"] ?? 0.0,
// //       reviewsCount: json["reviewsCount"] ?? 0,
// //       title: json["title"] ?? '',
// //       user: json["user"] != null
// //           ? RecipeReviewUserModel.fromJson(json["user"])
// //           : RecipeReviewUserModel(
// //           id: 1,
// //           profilePhoto: '',
// //           username: '',
// //           firstName: '',
// //           lastName: ''
// //       ),
// //     );
// //   }
// // }
//
// class ReviewsRecipeModel {
//   final num rating, reviewsCount;
//   final int id;
//   final String title, image;
//
//   final RecipeReviewUserModel user;
//
//   ReviewsRecipeModel({
//     required this.rating,
//     required this.reviewsCount,
//     required this.id,
//     required this.title,
//     required this.image,
//     required this.user,
//   });
//
//   factory ReviewsRecipeModel.fromJson(Map<String, dynamic> json) {
//     return ReviewsRecipeModel(
//       rating: json["rating"],
//       reviewsCount: json["reviewsCount"],
//       id: json["id"],
//       title: json["title"],
//       image: json["photo"],
//       user: RecipeReviewUserModel.fromJson(json["user"]),
//     );
//   }
// }
//

import 'package:recipe_app_project1/reviews/data/models/recipe_review_user_model.dart';

class ReviewsRecipeModel {
  final int id;
  final String title;
  final String image;
  final int reviewsCount;
  final num rating;
  final UserModelInRecipe user;

  ReviewsRecipeModel({
    required this.id,
    required this.title,
    required this.image,
    required this.reviewsCount,
    required this.rating,
    required this.user,
  });

  factory ReviewsRecipeModel.fromJson(Map<String, dynamic> json) {
    return ReviewsRecipeModel(
      id: json['id'],
      title: json['title'],
      image: json['photo'],
      reviewsCount: json['reviewsCount'],
      rating: json['rating'],
      user: UserModelInRecipe.fromJson(json['user']),
    );
  }
}
