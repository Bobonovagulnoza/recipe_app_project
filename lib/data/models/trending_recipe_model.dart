class TrendingRecipeModel{
  final int id,categoryId,timeRequired;
  final num rating;
  final String title, description,photo;

  TrendingRecipeModel({
    required this.id,
    required this.categoryId,
    required this.timeRequired,
    required this.rating,
    required this.title,
    required this.description,
    required this.photo,
  });
  factory TrendingRecipeModel.fromJson(Map<String, dynamic> json) {
    return TrendingRecipeModel(
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
