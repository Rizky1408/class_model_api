import 'dart:convert';

class Self {
  final String href;
  final String title;
  Self({
    this.href = '',
    this.title = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'href': href,
      'title': title,
    };
  }

  factory Self.fromMap(Map<String, dynamic> map) {
    return Self(
      href: map['href'] ?? '',
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Self.fromJson(String source) => Self.fromMap(json.decode(source));
}
