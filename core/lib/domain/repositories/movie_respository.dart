


import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/movie.dart';
import '../entities/movie_detail.dart';
import '../entities/review.dart';
import '../entities/video.dart';

abstract class MovieRepository{
  Future<Either<Failure, List<Movie>>> getNowPlaying();
  Future<Either<Failure, MovieDetail>> getDetailMovie(int id);
  Future<Either<Failure, List<Movie>>> getMovieRecommendations(int id);
  Future<Either<Failure, List<Video>>> getTrailerVideo(int id);
  Future<Either<Failure, List<Review>>> getReview(int id);
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, List<Movie>>> searchMovies(String query);
  Future<Either<Failure, String>> saveWatchlist(MovieDetail movie);
  Future<Either<Failure, String>> removeWatchlist(MovieDetail movie);
  Future<bool> isAddedToWatchlist(int id);
  Future<Either<Failure, List<Movie>>> getWatchlistMovies();
}