import 'package:equatable/equatable.dart';

class Video extends Equatable {
  final String? name;
  final String? key;
  final String? site;
  final int size;
  final String? type;
  final bool official;
  final String? id;
  final String? published_at;

  String get youtubeTrailerUrl => 'https://www.youtube.com/watch?v=$key';

  Video({
    required this.name,
    required this.key,
    required this.site,
    required this.size,
    required this.type,
    required this.official,
    required this.id,
    required this.published_at,
  });

  factory Video.fromJson(Map<String, dynamic> json) => Video(
      name: json["name"],
      key: json["key"],
      site: json["site"],
      size: json["size"],
      type: json["type"],
      official: json["official"],
      id: json["id"],
      published_at: json["published_at"]);

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
