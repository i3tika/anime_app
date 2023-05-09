import 'dart:convert';

class Anime {
  String animeName;
  String url;

  Anime({required this.animeName, required this.url});

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      animeName: json['anime_name'],
      url: json['url'],
    );
  }
}

class AnimeList {
  List<Anime> results;

  AnimeList({required this.results});

  factory AnimeList.fromJson(Map<String, dynamic> json) {
    List<Anime> list = [];
    for (var animeJson in json['results']) {
      Anime anime = Anime.fromJson(animeJson);
      list.add(anime);
    }
    return AnimeList(results: list);
  }
}
