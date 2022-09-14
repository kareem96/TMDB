import 'package:core/data/model/trailer_model.dart';
import 'package:equatable/equatable.dart';

class VideoResponse extends Equatable {
  final List<TrailerModel> trailerList;

  const VideoResponse({required this.trailerList});

  factory VideoResponse.fromJson(Map<String, dynamic> json) => VideoResponse(
        trailerList: List<TrailerModel>.from((json['results'] as List)
            .map((e) => TrailerModel.fromJson(e))
            .where((element) => element.id != null)),
      );

  Map<String, dynamic> toJson() => {
        'results': List<dynamic>.from(trailerList.map((e) => e.toJson())),
      };

  @override
  List<Object?> get props => [trailerList];
}
