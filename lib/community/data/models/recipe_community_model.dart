import 'package:recipe_app_project1/community/data/models/recipe_community_user_model.dart';
class RecipeCommunityModel {
  final num  timeRequired, rating, reviewsCount;
  final int id;
  final String title, description, photo, created;

  final RecipeCommunityUserModel user;

  RecipeCommunityModel(
      {required this.id,
        required this.timeRequired,
        required this.rating,
        required this.reviewsCount,
        required this.title,
        required this.description,
        required this.photo,
        required this.created,
        required this.user});

  factory RecipeCommunityModel.fromJson(Map<String, dynamic> json) {
    return RecipeCommunityModel(
      id: json["id"] ?? 0,
      timeRequired: json["timeRequired"] ?? 0,
      rating: json["rating"] ?? 0.0,
      reviewsCount: json["reviewsCount"] ?? 0,
      title: json["title"] ?? '',
      description: json["description"] ?? '',
      photo: json["photo"] ?? '',
      created: json["created"] ?? '',
      user: json["user"] != null
          ? RecipeCommunityUserModel.fromJson(json["user"])
          : RecipeCommunityUserModel(
          id: 1,
          profilePhoto: '',
          username: '',
          firstName: '',
          lastName: ''
      ),
    );
  }

}

