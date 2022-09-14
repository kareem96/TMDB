
part of "review_bloc.dart";

@immutable
abstract class ReviewState extends Equatable{}

class ReviewEmpty extends ReviewState{
@override
List<Object?> get props => [];
}

class ReviewLoading extends ReviewState{
@override
List<Object?> get props => [];
}

class ReviewError extends ReviewState{
final String message;

ReviewError(this.message);

@override
List<Object?> get props => [];
}

class ReviewHasData extends ReviewState{
final List<Review> result;

ReviewHasData(this.result);
@override
List<Object?> get props => [result];

}