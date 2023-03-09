import 'dart:convert';

class App {
  final String name;
  final String domain;
  final String category;
  final int popularity;
  String? logoPath;
  bool? humanVerified;

  App({
    required this.category,
    required this.name,
    required this.domain,
    required this.popularity,
    this.logoPath,
    this.humanVerified,
  });

  factory App.fromJson(Map<String, dynamic> json) {
    return App(
      name: json['name'],
      domain: json['domain'],
      popularity: json['popularity'],
      category: json['category'],
      logoPath: json['logoPath'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'category': category,
      'popularity': popularity,
    };
  }
}
