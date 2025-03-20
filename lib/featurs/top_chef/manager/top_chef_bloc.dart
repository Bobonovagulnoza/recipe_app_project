import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app_project1/featurs/top_chef/manager/top_chef_events.dart';
import 'package:recipe_app_project1/featurs/top_chef/manager/top_chef_state.dart';

import '../../../data/repositories/chef_repository.dart';
// part 'top_chef_events.dart';


class TopChefsBloc extends Bloc<TopChefsEvent, TopChefsState> {
  TopChefsBloc({required ChefRepository chefRepo})
      : _chefRepo = chefRepo,
        super(TopChefsState.initial()) {
    on<TopChefsLoading>(_onLoad);
    add(TopChefsLoading());
  }

  final ChefRepository _chefRepo;

  Future<void> _onLoad(TopChefsLoading event, Emitter<TopChefsState> emit) async {
    emit(
      state.copyWith(
        mostViewedChefsStatus: TopChefsStatus.loading,
        mostLikedChefsStatus: TopChefsStatus.loading,
        newChefsStatus: TopChefsStatus.loading,
      ),
    );

    // final mostViewedChefs = await _chefRepo.fetchMostViewedChefs();
    // emit(state.copyWith(mostViewedChefs: mostViewedChefs, mostViewedChefsStatus: TopChefsStatus.success));
    // final mostLikedChefs = await _chefRepo.fetchMostLikedChefs();
    // emit(state.copyWith(mostLikedChefs: mostLikedChefs, mostLikedChefsStatus: TopChefsStatus.success));
    // final newChefs = await _chefRepo.fetchNewChefs();
    // emit(state.copyWith(newChefs: newChefs, newChefsStatus: TopChefsStatus.success));
  }
}
