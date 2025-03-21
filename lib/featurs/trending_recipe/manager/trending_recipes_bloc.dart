// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../data/repositories/recipe_repository.dart';
// import '../../../../data/repositories/review_repository.dart';
//
// part 'trending_recipes_events.dart';
// part 'trending_recipes_state.dart';
// class ReviewsBloc extends Bloc<TrendingRecipesEvents, TrendingRecipesState> {
//   ReviewsBloc({
//     required RecipeRepository recipeRepo,
//     required ReviewRepository reviewRepo,
//     required int recipeId,
//   })  : _recipeRepo = recipeRepo,
//         _reviewRepo = reviewRepo,
//         super(
//         TrendingRecipesState(
//           recipeModel: null,
//           status: TrendingRecipesState.loading,
//           reviews: [],
//         ),
//       ) {
//     on<ReviewsLoading>(_onLoad);
//     add(ReviewsLoading(recipeId: recipeId));
//   }
//
//   final RecipeRepository _recipeRepo;
//   final ReviewRepository _reviewRepo;
//
//   Future<void> _onLoad(ReviewsLoading event, Emitter<TrendingRecipesState> emit) async {
//     emit(trendingRecipesState.copyWith(status: TrendingRecipesState.loading));
//     final recipe = await _recipeRepo.fetchRecipeForReviews(event.recipeId);
//     final reviews = await _reviewRepo.fetchReviewsByRecipe(event.recipeId);
//     emit(trendingRecipesState.copyWith(recipeModel: recipe, reviews: reviews, status: TrendingRecipesState.idle));
//   }
// }
