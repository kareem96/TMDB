import 'package:equatable/equatable.dart';

class Review extends Equatable {
  final String? author;
  final String? authorDetails;
  final String? content;
  final String? createdAt;
  final String? url;
  final String? updateAt;
  final String? id;

  Review({
    required this.author,
    required this.authorDetails,
    required this.content,
    required this.createdAt,
    required this.url,
    required this.updateAt,
    required this.id,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        author: json["author"],
        authorDetails: json["author_details"],
        content: json["content"],
        createdAt: json["created_at"],
        updateAt: json["update_at"],
        url: json["url"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "author_details": authorDetails,
        "content": content,
        "created_at": createdAt,
        "update_at": updateAt,
        "id": id,
        "url": url,
      };

  @override
  List<Object?> get props => [
        authorDetails,
        author,
        url,
        content,
        updateAt,
        createdAt,
        id,
      ];
}
