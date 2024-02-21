// ignore_for_file: public_member_api_docs, sort_constructors_first

// ignore_for_file: non_constant_identifier_names

class PostModel {
  String? id;
  String? banner;
  String? title;
  String? introduction;
  String? content_html;
  String? created_at;

  PostModel({
    this.id,
    this.banner,
    this.title,
    this.introduction,
    this.content_html,
    this.created_at,
  });

  PostModel copyWith({
    String? id,
    String? banner,
    String? title,
    String? introduction,
    String? content_html,
    String? created_at,
  }) {
    return PostModel(
      id: id ?? this.id,
      banner: banner ?? this.banner,
      title: title ?? this.title,
      introduction: introduction ?? this.introduction,
      content_html: content_html ?? this.content_html,
      created_at: created_at ?? this.created_at,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'banner': banner,
      'title': title,
      'introduction': introduction,
      'content_html': content_html,
      'created_at': created_at,
    };
  }

  factory PostModel.fromJson(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] != null ? map['id'] as String : null,
      banner: map['banner'] != null ? map['banner'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      introduction:
          map['introduction'] != null ? map['introduction'] as String : null,
      content_html:
          map['content_html'] != null ? map['content_html'] as String : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
    );
  }

  @override
  String toString() {
    return 'PostModel(id: $id, banner: $banner, title: $title, introduction: $introduction, content_html: $content_html, created_at: $created_at)';
  }

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.banner == banner &&
        other.title == title &&
        other.introduction == introduction &&
        other.content_html == content_html &&
        other.created_at == created_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        banner.hashCode ^
        title.hashCode ^
        introduction.hashCode ^
        content_html.hashCode ^
        created_at.hashCode;
  }
}
