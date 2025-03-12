import '../../../community/data/models/recipe_community_model.dart';
import '../../../core/client.dart';
import '../../../recipe_detail/data/models/recipe_detail_model.dart';
import '../models/recipe_model.dart';

class RecipeRepository {
  RecipeRepository({required this.client});

  final ApiClient client;
  late final RecipeDetailModel recipe;
  // late final RecipeModel recipeModel;
  List<RecipeCommunityModel> communityRecipes = [];
  Map<int, List<RecipeModel>> recipesByCategory = {};

  Future<List<RecipeModel>> fetchRecipesByCategory(int categoryId) async {
    if (recipesByCategory.containsKey(categoryId) &&
        recipesByCategory[categoryId] != null) {
      return recipesByCategory[categoryId]!;
    }
    var rawRecipes = await client.fetchRecipesByCategory(categoryId);
    final recipes =
        rawRecipes.map((recipe) => RecipeModel.fromJson(recipe)).toList();
    recipesByCategory[categoryId] = recipes;
    return recipes;
  }

  Future<RecipeDetailModel> fetchRecipeById(int recipeId) async {
    final rawRecipe = await client.fetchRecipeById(recipeId);
    recipe = RecipeDetailModel.fromJson(rawRecipe);
    return recipe;
  }

  Future<RecipeModel> fetchTrendingRecipe() async {
    final rawRecipe = await client.fetchRecipeTrendingRecipe();
    final recipe = RecipeModel.fromJson(rawRecipe);
    return recipe;
  }

  Future<List<RecipeCommunityModel>> fetchCommunityRecipes(
      int? limit, {
        required String order,
        required bool descending,
      }) async {
    var communitiesData = await client.fetchCommunityRecipes(limit,
        order: order, descending: descending);
    communityRecipes = communitiesData.map((e) => RecipeCommunityModel.fromJson(e)).toList();
    return communityRecipes;
  }
}
