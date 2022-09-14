import 'package:core/domain/entities/review.dart';
import 'package:equatable/equatable.dart';

class ReviewModel extends Equatable {
  final String? author;
  final String? authorDetails;
  final String? content;
  final String? createdAt;
  final String? url;
  final String? updateAt;
  final String? id;

  ReviewModel({
    required this.author,
    required this.authorDetails,
    required this.content,
    required this.createdAt,
    required this.url,
    required this.updateAt,
    required this.id,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        author: json["author"],
        authorDetails: json["authorDetails"],
        content: json["content"],
        createdAt: json["created_at"],
        updateAt: json["update_at"],
        url: json["url"],
        id: json["id"],
      );

  Review toEntity() {
    return Review(
        author: author,
        authorDetails: authorDetails,
        content: content,
        createdAt: createdAt,
        url: url,
        updateAt: updateAt,
        id: id);
  }

  Map<String, dynamic> toJson() => {
        "author": author,
        "author_details": authorDetails,
        "content": content,
        "created_at": createdAt,
        "update_at": updateAt,
        "url": url,
        "id": id,
      };

  @override
  List<Object?> get props => [
        authorDetails,
        author,
        content,
        createdAt,
        updateAt,
        url,
        id,
      ];
}
