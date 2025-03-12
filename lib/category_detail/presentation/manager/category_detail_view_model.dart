// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../categories/data/models/categories_model.dart';
// import '../../../categories/data/repositories/category_repository.dart';
// import '../../data/models/recipe_model.dart';
// import '../../data/repositories/recipe_repoitory.dart';
//
// class CategoryDetailEvent {}
//
// class CategoryDetailLoading extends CategoryDetailEvent {}
//
// enum CategoryDetailStatus { idle, loading, error }
//
// class CategoryDetailState {
//   CategoryDetailState({
//     required this.categories,
//     required this.recipes,
//     required this.right,
//     required this.status,
//     required this.selectedCategoryId,
//   });
//
//   final List<CategoryModel> categories;
//
//   final List<RecipeModel> recipes;
//
//   final bool right;
//
//   final CategoryDetailStatus status;
//   late final int selectedCategoryId;
//
//   late CategoryModel _selected;
//
//   CategoryModel get selected => _selected;
//
//   set selected(CategoryModel model) {
//     _selected = model;
//     fetchRecipesByCategory(_selected.id);
//     notifyListeners();
//   }
// }
//
// class CategoryDetailBloc
//     extends Bloc<CategoryDetailEvent, CategoryDetailState> {
//   CategoryDetailBloc({
//     required CategoryRepository catRepo,
//     required RecipeRepository recipeRepo,
//     required int selectedId,
//   })  : _catRepo = catRepo,
//         _recipeRepo = recipeRepo,
//         super(
//           CategoryDetailState(
//             categories: [],
//             recipes: [],
//             right: true,
//             status: CategoryDetailStatus.loading,
//             selectedCategoryId: selectedId,
//           ),
//         ) {
//     on<CategoryDetailLoading>(
//       (event, emit) {
//         emit(
//           CategoryDetailState(
//               categories: [],
//               recipes: [],
//               right: true,
//               status: CategoryDetailStatus.loading,
//               selectedCategoryId: selectedId
//           ),
//         );
//
//         isLoading = true;
//         notifyListeners();
//         categories = await _catRepo.fetchCategories();
//         selected = categories.first;
//         recipes = await _recipeRepo.fetchRecipesByCategory(selected.id);
//         isLoading = false;
//         notifyListeners();
//       },
//     );
//   }
//
//   final CategoryRepository _catRepo;
//   final RecipeRepository _recipeRepo;
//
//   Future<void> fetchRecipesByCategory(int categoryId) async {
//     recipes = await _recipeRepo.fetchRecipesByCategory(selected.id);
//     notifyListeners();
//   }
// }
