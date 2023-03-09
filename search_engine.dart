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

class SearchEngine {
  late final List<App> _apps;

  SearchEngine.fromJson(String json) {
    final List<dynamic> jsonList = jsonDecode(json);
    _apps = jsonList.map((json) => App.fromJson(json)).toList();
  }

  List<App> search(String query) {
    final List<App> results = [];
    query.toLowerCase();

    for (final app in _apps) {
      if (app.name.toLowerCase().startsWith(query)) {
        results.add(app);
      }
    }

    results.sort((a, b) => b.popularity.compareTo(a.popularity));
    return results;
  }
}
