// To parse this JSON data, do
//
//     final modelPlayList = modelPlayListFromJson(jsonString);

import 'dart:convert';

class ModelPlayList {
    ModelPlayList({
        this.kind,
        this.etag,
        this.nextPageToken,
        this.pageInfo,
        this.items,
    });

    final String kind;
    final String etag;
    final String nextPageToken;
    final PageInfo pageInfo;
    final List<Item> items;

    factory ModelPlayList.fromRawJson(String str) => ModelPlayList.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ModelPlayList.fromJson(Map<String, dynamic> json) => ModelPlayList(
        kind: json["kind"] == null ? null : json["kind"],
        etag: json["etag"] == null ? null : json["etag"],
        nextPageToken: json["nextPageToken"] == null ? null : json["nextPageToken"],
        pageInfo: json["pageInfo"] == null ? null : PageInfo.fromJson(json["pageInfo"]),
        items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "etag": etag == null ? null : etag,
        "nextPageToken": nextPageToken == null ? null : nextPageToken,
        "pageInfo": pageInfo == null ? null : pageInfo.toJson(),
        "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class Item {
    Item({
        this.kind,
        this.etag,
        this.id,
        this.snippet,
    });

    final Kind kind;
    final String etag;
    final String id;
    final Snippet snippet;

    factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        kind: json["kind"] == null ? null : kindValues.map[json["kind"]],
        etag: json["etag"] == null ? null : json["etag"],
        id: json["id"] == null ? null : json["id"],
        snippet: json["snippet"] == null ? null : Snippet.fromJson(json["snippet"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kindValues.reverse[kind],
        "etag": etag == null ? null : etag,
        "id": id == null ? null : id,
        "snippet": snippet == null ? null : snippet.toJson(),
    };
}

enum Kind { YOUTUBE_PLAYLIST }

final kindValues = EnumValues({
    "youtube#playlist": Kind.YOUTUBE_PLAYLIST
});

class Snippet {
    Snippet({
        this.publishedAt,
        this.channelId,
        this.title,
        this.description,
        this.thumbnails,
        this.channelTitle,
        this.localized,
    });

    final DateTime publishedAt;
    final ChannelId channelId;
    final String title;
    final String description;
    final Thumbnails thumbnails;
    final ChannelTitle channelTitle;
    final Localized localized;

    factory Snippet.fromRawJson(String str) => Snippet.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
        publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
        channelId: json["channelId"] == null ? null : channelIdValues.map[json["channelId"]],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        thumbnails: json["thumbnails"] == null ? null : Thumbnails.fromJson(json["thumbnails"]),
        channelTitle: json["channelTitle"] == null ? null : channelTitleValues.map[json["channelTitle"]],
        localized: json["localized"] == null ? null : Localized.fromJson(json["localized"]),
    );

    Map<String, dynamic> toJson() => {
        "publishedAt": publishedAt == null ? null : publishedAt.toIso8601String(),
        "channelId": channelId == null ? null : channelIdValues.reverse[channelId],
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "thumbnails": thumbnails == null ? null : thumbnails.toJson(),
        "channelTitle": channelTitle == null ? null : channelTitleValues.reverse[channelTitle],
        "localized": localized == null ? null : localized.toJson(),
    };
}

enum ChannelId { U_COK1_V_SA_NX_Z_ZRXUF_ASLH_SQ_JG }

final channelIdValues = EnumValues({
    "UCok1vSaNxZZrxufASLHSqJg": ChannelId.U_COK1_V_SA_NX_Z_ZRXUF_ASLH_SQ_JG
});

enum ChannelTitle { PATRICK_APRENDA_UNITY }

final channelTitleValues = EnumValues({
    "Patrick - Aprenda Unity": ChannelTitle.PATRICK_APRENDA_UNITY
});

class Localized {
    Localized({
        this.title,
        this.description,
    });

    final String title;
    final String description;

    factory Localized.fromRawJson(String str) => Localized.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Localized.fromJson(Map<String, dynamic> json) => Localized(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
    );

    Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "description": description == null ? null : description,
    };
}

class Thumbnails {
    Thumbnails({
        this.thumbnailsDefault,
        this.medium,
        this.high,
        this.standard,
    });

    final Default thumbnailsDefault;
    final Default medium;
    final Default high;
    final Default standard;

    factory Thumbnails.fromRawJson(String str) => Thumbnails.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
        thumbnailsDefault: json["default"] == null ? null : Default.fromJson(json["default"]),
        medium: json["medium"] == null ? null : Default.fromJson(json["medium"]),
        high: json["high"] == null ? null : Default.fromJson(json["high"]),
        standard: json["standard"] == null ? null : Default.fromJson(json["standard"]),
    );

    Map<String, dynamic> toJson() => {
        "default": thumbnailsDefault == null ? null : thumbnailsDefault.toJson(),
        "medium": medium == null ? null : medium.toJson(),
        "high": high == null ? null : high.toJson(),
        "standard": standard == null ? null : standard.toJson(),
    };
}

class Default {
    Default({
        this.url,
        this.width,
        this.height,
    });

    final String url;
    final int width;
    final int height;

    factory Default.fromRawJson(String str) => Default.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Default.fromJson(Map<String, dynamic> json) => Default(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
    };
}

class PageInfo {
    PageInfo({
        this.totalResults,
        this.resultsPerPage,
    });

    final int totalResults;
    final int resultsPerPage;

    factory PageInfo.fromRawJson(String str) => PageInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        totalResults: json["totalResults"] == null ? null : json["totalResults"],
        resultsPerPage: json["resultsPerPage"] == null ? null : json["resultsPerPage"],
    );

    Map<String, dynamic> toJson() => {
        "totalResults": totalResults == null ? null : totalResults,
        "resultsPerPage": resultsPerPage == null ? null : resultsPerPage,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
