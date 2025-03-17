import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app_project1/reviews/presentation/manager/reviews_state.dart';
import '../../../category_detail/data/repositories/recipe_repoitory.dart';

part 'reviews_events.dart';

class RecipeReviewBloc extends Bloc<ReviewsEvent, ReviewsState> {
  RecipeReviewBloc({
    required RecipeRepository repo,
    required int recipeId,
  })  : _repo = repo,
        super(
        ReviewsState(
            status: ReviewsStatus.loading,
            recipeModel: null,
            recipeComments: null
        ),
      ) {
    on<ReviewsLoading>(_onLoad);
    add(ReviewsLoading(recipeId: recipeId));
  }

  final RecipeRepository _repo;

  Future<void> _onLoad(ReviewsLoading event, Emitter<ReviewsState> emit) async {
    emit(state.copyWith(status: ReviewsStatus.loading));
    emit(ReviewsState(recipeModel: null, recipeComments: null,status: ReviewsStatus.loading));
    final recipe = await _repo.fetchRecipeForReviews(event.recipeId);
    final recipeComment = await _repo.fetchRecipeReviewComments(event.recipeId);
    emit(state.copyWith(recipeComments: recipeComment, recipeModel: recipe, status: ReviewsStatus.idle));
  }
}
