import 'package:core/core.dart';
import 'package:core/domain/entities/review.dart';
import 'package:core/domain/repositories/movie_respository.dart';
import 'package:dartz/dartz.dart';

class GetReview {
  final MovieRepository repository;

  GetReview(this.repository);

  Future<Either<Failure, List<Review>>> execute(id) {
    return repository.getReview(id);
  }
}
