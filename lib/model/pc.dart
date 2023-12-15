// To parse this JSON data, do
//
//     final pc = pcFromJson(jsonString);

import 'dart:convert';

List<Pc> pcFromJson(String str) => List<Pc>.from(json.decode(str).map((x) => Pc.fromJson(x)));

String pcToJson(List<Pc> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pc {
    String title;
    String thumb;
    Author author;
    String tag;
    String time;
    String desc;
    String key;

    Pc({
        required this.title,
        required this.thumb,
        required this.author,
        required this.tag,
        required this.time,
        required this.desc,
        required this.key,
    });

    factory Pc.fromJson(Map<String, dynamic> json) => Pc(
        title: json["title"],
        thumb: json["thumb"],
        author: authorValues.map[json["author"]]!,
        tag: json["tag"],
        time: json["time"],
        desc: json["desc"],
        key: json["key"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "thumb": thumb,
        "author": authorValues.reverse[author],
        "tag": tag,
        "time": time,
        "desc": desc,
        "key": key,
    };
}

enum Author {
    ALDY_WAYONG,
    MARTIN_CHARIS
}

final authorValues = EnumValues({
    "Aldy Wayong": Author.ALDY_WAYONG,
    "Martin Charis": Author.MARTIN_CHARIS
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
