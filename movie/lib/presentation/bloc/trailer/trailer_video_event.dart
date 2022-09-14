part of 'trailer_video_bloc.dart';

abstract class TrailerVideoEvent extends Equatable {}

class OnTrailerVideo extends TrailerVideoEvent {
  final int id;

  OnTrailerVideo(this.id);

  @override
  List<Object?> get props => [id];
}
