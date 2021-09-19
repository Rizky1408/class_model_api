import 'dart:convert';

import 'self.dart';

class Links {
  final Self self;
  Links({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return {
      'self': self.toMap(),
    };
  }

  factory Links.fromMap(Map<String, dynamic> map) {
    return Links(
      self: Self.fromMap(map['self']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Links.fromJson(String source) => Links.fromMap(json.decode(source));
}
