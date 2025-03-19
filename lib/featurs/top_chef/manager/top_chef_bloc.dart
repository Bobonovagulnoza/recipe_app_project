// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../core/client.dart';
// import 'chef_manager.dart';
//
// // Bloc Events
// abstract class ChefEvent {}
// class FetchChefsEvent extends ChefEvent {}
//
// // Bloc States
// abstract class ChefState {}
// class ChefLoadingState extends ChefState {}
// class ChefLoadedState extends ChefState {
//   final List<Chef> mostViewedChefs;
//   final List<Chef> mostLikedChefs;
//   final List<Chef> newChefs;
//
//   ChefLoadedState({required this.mostViewedChefs, required this.mostLikedChefs, required this.newChefs});
// }
// class ChefErrorState extends ChefState {
//   final String message;
//   ChefErrorState(this.message);
// }
//
// // Bloc Class
// class ChefBloc extends Bloc<ChefEvent, ChefState> {
//   final ApiClient apiClient;
//
//   ChefBloc({required this.apiClient}) : super(ChefLoadingState()) {
//     on<FetchChefsEvent>((event, emit) async {
//       try {
//         final mostViewed = await apiClient.getChefs("most_viewed");
//         final mostLiked = await apiClient.getChefs("most_liked");
//         final newChefs = await apiClient.getChefs("new_chefs");
//
//         emit(ChefLoadedState(mostViewedChefs: mostViewed, mostLikedChefs: mostLiked, newChefs: newChefs));
//       } catch (e) {
//         emit(ChefErrorState("Failed to load chefs: ${e.toString()}"));
//       }
//     });
//   }
// }
