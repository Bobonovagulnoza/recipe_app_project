import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_review_setate.dart';

part 'create_review_events.dart';

class CreateReviewBloc extends Bloc<CreateReviewEvent, CreateReviewState> {
  CreateReviewBloc()
      : super(
          CreateReviewState(
            recipeId: null,
            currentIndex: null,
            status: CreateReviewStatus.loading,
          ),
        ){
    on<CreateReviewRate>(_onRate);
  }

  Future<void> _onRate (CreateReviewRate event,Emitter<CreateReviewState> emit) async{
    emit(state.copyWith(currentIndex: event.currentIndex,status: CreateReviewStatus.idle));
  }

  // Future<void> _onPickImage (CreatReviewPickImage event, Emitter<CreateReviewState> emit)async{
  //   File? image;
  //
  // }
}
