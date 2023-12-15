

import 'dart:convert';

List<News> newsFromJson(String str) => List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

String newsToJson(List<News> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class News {
    String title;
    String thumb;
    Author author;
    Tag tag;
    String time;
    String desc;
    String key;

    News({
        required this.title,
        required this.thumb,
        required this.author,
        required this.tag,
        required this.time,
        required this.desc,
        required this.key,
    });

    factory News.fromJson(Map<String, dynamic> json) => News(
        title: json["title"],
        thumb: json["thumb"],
        author: authorValues.map[json["author"]]!,
        tag: tagValues.map[json["tag"]]!,
        time: json["time"],
        desc: json["desc"],
        key: json["key"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "thumb": thumb,
        "author": authorValues.reverse[author],
        "tag": tagValues.reverse[tag],
        "time": time,
        "desc": desc,
        "key": key,
    };
}

enum Author {
    KIKI_RIMADINA,
    TEO_ARIESDA
}

final authorValues = EnumValues({
    "Kiki Rimadina": Author.KIKI_RIMADINA,
    "Teo Ariesda": Author.TEO_ARIESDA
});

enum Tag {
    GAMES,
    GAME_NEWS
}

final tagValues = EnumValues({
    "Games": Tag.GAMES,
    "Game News": Tag.GAME_NEWS
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
