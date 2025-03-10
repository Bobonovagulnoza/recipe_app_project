// import 'package:recipe_app_project1/categories/data/models/categories_model.dart';
// import 'package:recipe_app_project1/categories/data/repositories/category_repository.dart';
// import 'categories_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// class CategoriesCubit extends Cubit<CategoriesState> {
//   CategoriesCubit({required CategoryRepository catRepo})
//       : _catRepo = catRepo,
//         super(CategoriesStatus(categories: [], mainCategory: null,status: CategoriesStatus.loading)) {
//     load();
//   }
//
//   final CategoryRepository _catRepo;
//
//   Future<void> load() async{
//     final List<CategoryModel> allCategories = await _catRepo.fetchCategories();
//     emit(
//       CategoriesState(
//         categories: allCategories.where((CategoryModel category) => !category.main).toList(),
//         mainCategory: allCategories.firstWhere((CategoryModel category)=> category.main),
//         status: CategoriesStatus.idle,
//       ),
//     );
//   }
// }
