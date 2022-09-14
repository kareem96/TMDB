
import 'package:core/domain/entities/video.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/usecase/get_trailer_video.dart';

part 'trailer_video_state.dart';

part 'trailer_video_event.dart';

class TrailerVideoBloc extends Bloc<TrailerVideoEvent, TrailerVideoState> {
final GetTrailerVideo _getTrailerVideo;

TrailerVideoBloc(this._getTrailerVideo) : super(TrailerVideoEmpty()) {
on<OnTrailerVideo>(_onTrailerVideo);
}

Future<void> _onTrailerVideo(
OnTrailerVideo event, Emitter<TrailerVideoState> emit) async {
final id = event.id;

emit(TrailerVideoLoading());
final result = await _getTrailerVideo.execute(id);
result.fold((failure) {
emit(TrailerVideoError(failure.message));
}, (success) {
success.isEmpty
? emit(TrailerVideoEmpty())
    : emit(TrailerVideoHasData(success));
});
}
}