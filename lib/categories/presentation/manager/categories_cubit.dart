import 'package:recipe_app_project1/categories/data/models/categories_model.dart';
import 'package:recipe_app_project1/categories/data/repositories/category_repository.dart';
import 'categories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CategoriesEvent{}
class CategoriesLoading extends CategoriesEvent{}
class CategoriesBloc extends Bloc<CategoriesEvent,CategoriesState> {
  CategoriesBloc({required CategoryRepository catRepo})
      : _catRepo = catRepo,
        super(CategoriesState(categories: [],mainCategory: null,status: CategoriesStatus.loading)) {
    on<CategoriesLoading>(load);
    add(CategoriesLoading());
  }

  final CategoryRepository _catRepo;

  Future<void> load(CategoriesLoading event,Emitter<CategoriesState> emit) async{
    final List<CategoryModel> allCategories = await _catRepo.fetchCategories();
    emit(
      CategoriesState(
        categories: allCategories.where((CategoryModel category) => !category.main).toList(),
        mainCategory: allCategories.firstWhere((CategoryModel category)=> category.main),
        status: CategoriesStatus.idle,
      ),
    );
  }
}