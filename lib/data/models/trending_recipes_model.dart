class TrendingRecipesModel{
  final int id,categoryId,timeRequired;
  final num rating;
  final String title, description,photo;

  TrendingRecipesModel({
    required this.id,
    required this.categoryId,
    required this.timeRequired,
    required this.rating,
    required this.title,
    required this.description,
    required this.photo,
  });
  factory TrendingRecipesModel.fromJson(Map<String, dynamic> json) {
    return TrendingRecipesModel(
        id: json['id'],
        categoryId: json["categoryId"],
        timeRequired: json["timeRequired"],
        rating: json["rating"],
        title: json["title"],
        description: json["description"],
        photo: json["photo"]
    );
  }
}
