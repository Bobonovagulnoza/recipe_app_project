part of 'reviews_bloc.dart';

sealed class TrendingRecipesEvents {}

final class ReviewsLoading extends TrendingRecipesEvents {
  final int recipeId;

  ReviewsLoading({required this.recipeId});
}
