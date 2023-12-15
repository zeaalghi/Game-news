// To parse this JSON data, do
//
//     final console = consoleFromJson(jsonString);

import 'dart:convert';

List<Console> consoleFromJson(String str) => List<Console>.from(json.decode(str).map((x) => Console.fromJson(x)));

String consoleToJson(List<Console> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Console {
    String title;
    String thumb;
    Author author;
    Tag tag;
    String time;
    String desc;
    String key;

    Console({
        required this.title,
        required this.thumb,
        required this.author,
        required this.tag,
        required this.time,
        required this.desc,
        required this.key,
    });

    factory Console.fromJson(Map<String, dynamic> json) => Console(
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
    ALDY_WAYONG,
    MARTIN_CHARIS,
    TEO_ARIESDA
}

final authorValues = EnumValues({
    "Aldy Wayong": Author.ALDY_WAYONG,
    "Martin Charis": Author.MARTIN_CHARIS,
    "Teo Ariesda": Author.TEO_ARIESDA
});

enum Tag {
    CONSOLE
}

final tagValues = EnumValues({
    "Console": Tag.CONSOLE
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
