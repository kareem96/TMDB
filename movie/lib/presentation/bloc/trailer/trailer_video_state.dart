part of 'trailer_video_bloc.dart';

@immutable
abstract class TrailerVideoState extends Equatable {}

class TrailerVideoEmpty extends TrailerVideoState {
  @override
  List<Object?> get props => [];
}

class TrailerVideoLoading extends TrailerVideoState {
  @override
  List<Object?> get props => [];
}

class TrailerVideoError extends TrailerVideoState {
  final String message;

  TrailerVideoError(this.message);

  @override
  List<Object?> get props => [message];
}

class TrailerVideoHasData extends TrailerVideoState {
  final List<Video> result;

  TrailerVideoHasData(this.result);

  @override
  List<Object?> get props => [result];
}
