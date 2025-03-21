import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/recipe/review_model.dart';
import '../../../../data/models/recipe/reviews_recipe_model.dart';
import '../../../data/models/trending_recipe_model.dart';
import '../../../data/models/trending_recipes_model.dart';

enum TrendingRecipesStatus { idle, loading, error }

@immutable
class TrendingRecipesState extends Equatable {
  final TrendingRecipesStatus trendingRecipesState;
  final TrendingRecipeModel? trendingRecipeModel;
  final List<TrendingRecipesModel> trending;

  const TrendingRecipesState({
    required this.trendingRecipeModel,
    required this.trendingRecipesState,
    required this.trending,
  });

  TrendingRecipesState copyWith({
    ReviewsRecipeModel? recipeModel,
    TrendingRecipesState? status,
    List<ReviewModel>? reviews,
  }) {
    return TrendingRecipesState(
      trendingRecipeModel: trendingRecipeModel ?? this.trendingRecipeModel,
      trendingRecipesState: trendingRecipesState ?? this.trendingRecipesState,
      trending: trending ?? this.trending,
    );
  }

  @override
  List<Object?> get props => [trendingRecipeModel, trending, trendingRecipesState];
}
