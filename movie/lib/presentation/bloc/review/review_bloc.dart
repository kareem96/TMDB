import 'package:core/domain/entities/review.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/usecase/get_review.dart';

part 'review_event.dart';

part 'review_state.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final GetReview _getReview;

  ReviewBloc(this._getReview) : super(ReviewEmpty()) {
    on<OnReview>(_onReview);
  }

  Future<void> _onReview(OnReview event, Emitter<ReviewState> emit) async {
    final id = event.id;

    emit(ReviewLoading());
    final result = await _getReview.execute(id);
    result.fold((failure) {
      emit(ReviewError(failure.message));
    }, (success) {
      success.isEmpty ? emit(ReviewEmpty()) : emit(ReviewHasData(success));
    });
  }
}
