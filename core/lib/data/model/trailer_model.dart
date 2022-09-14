import 'package:core/domain/entities/video.dart';
import 'package:equatable/equatable.dart';

class TrailerModel extends Equatable {
  final String? name;
  final String? key;
  final String? site;
  final int size;
  final String? type;
  final bool official;
  final String? id;
  final String? published_at;

  TrailerModel({
    required this.name,
    required this.key,
    required this.site,
    required this.size,
    required this.type,
    required this.official,
    required this.id,
    required this.published_at,
  });

  factory TrailerModel.fromJson(Map<String, dynamic> json) => TrailerModel(
      name: json["name"],
      key: json["key"],
      site: json["site"],
      size: json["size"],
      type: json["type"],
      official: json["official"],
      id: json["id"],
      published_at: json["published_at"]);

  Video toEntity() {
    return Video(
        name: name,
        key: key,
        site: site,
        size: size,
        type: type,
        official: official,
        id: id,
        published_at: published_at);
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "key": key,
        "site": site,
        "size": size,
        "type": type,
        "official": official,
        "id": id,
        "published_at": published_at,
      };

  @override
  List<Object?> get props => [
        name,
        key,
        site,
        size,
        type,
        official,
        id,
        published_at,
      ];
}
