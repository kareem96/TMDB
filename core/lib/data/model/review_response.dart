import 'package:core/data/model/review_model.dart';
import 'package:equatable/equatable.dart';

class ReviewResponse extends Equatable {
  final List<ReviewModel> reviewList;

  const ReviewResponse({required this.reviewList});

  factory ReviewResponse.fromJson(Map<String, dynamic> json) => ReviewResponse(
      reviewList: List<ReviewModel>.from((json["results"] as List)
          .map((e) => ReviewModel.fromJson(e))
          .where((element) => element.id != null)));

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(reviewList.map((e) => e.toJson())),
      };

  @override
// TODO: implement props
  List<Object?> get props => [reviewList];
}
