import 'package:core/core.dart';
import 'package:core/domain/entities/video.dart';
import 'package:core/domain/repositories/movie_respository.dart';
import 'package:dartz/dartz.dart';

class GetTrailerVideo {
  final MovieRepository repository;

  GetTrailerVideo(this.repository);

  Future<Either<Failure, List<Video>>> execute(id) {
    return repository.getTrailerVideo(id);
  }
}
