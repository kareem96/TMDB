part of "review_bloc.dart";

abstract class ReviewEvent extends Equatable {}

class OnReview extends ReviewEvent {
  final int id;

  OnReview(this.id);

  @override
  List<Object?> get props => [id];
}
