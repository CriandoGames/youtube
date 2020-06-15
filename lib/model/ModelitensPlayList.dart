// To parse this JSON data, do
//
//     final modelitensPlayList = modelitensPlayListFromJson(jsonString);

import 'dart:convert';

class ModelitensPlayList {
    ModelitensPlayList({
        this.kind,
        this.etag,
        this.items,
        this.pageInfo,
    });

    final String kind;
    final String etag;
    final List<Item> items;
    final PageInfo pageInfo;

    factory ModelitensPlayList.fromRawJson(String str) => ModelitensPlayList.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ModelitensPlayList.fromJson(Map<String, dynamic> json) => ModelitensPlayList(
        kind: json["kind"] == null ? null : json["kind"],
        etag: json["etag"] == null ? null : json["etag"],
        items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        pageInfo: json["pageInfo"] == null ? null : PageInfo.fromJson(json["pageInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "etag": etag == null ? null : etag,
        "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toJson())),
        "pageInfo": pageInfo == null ? null : pageInfo.toJson(),
    };
}

class Item {
    Item({
        this.kind,
        this.etag,
        this.id,
        this.snippet,
    });

    final String kind;
    final String etag;
    final String id;
    final Snippet snippet;

    factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        kind: json["kind"] == null ? null : json["kind"],
        etag: json["etag"] == null ? null : json["etag"],
        id: json["id"] == null ? null : json["id"],
        snippet: json["snippet"] == null ? null : Snippet.fromJson(json["snippet"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "etag": etag == null ? null : etag,
        "id": id == null ? null : id,
        "snippet": snippet == null ? null : snippet.toJson(),
    };
}

class Snippet {
    Snippet({
        this.publishedAt,
        this.channelId,
        this.title,
        this.description,
        this.thumbnails,
        this.channelTitle,
        this.playlistId,
        this.position,
        this.resourceId,
    });

    final DateTime publishedAt;
    final String channelId;
    final String title;
    final String description;
    final Thumbnails thumbnails;
    final String channelTitle;
    final String playlistId;
    final int position;
    final ResourceId resourceId;

    factory Snippet.fromRawJson(String str) => Snippet.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
        publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
        channelId: json["channelId"] == null ? null : json["channelId"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        thumbnails: json["thumbnails"] == null ? null : Thumbnails.fromJson(json["thumbnails"]),
        channelTitle: json["channelTitle"] == null ? null : json["channelTitle"],
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        position: json["position"] == null ? null : json["position"],
        resourceId: json["resourceId"] == null ? null : ResourceId.fromJson(json["resourceId"]),
    );

    Map<String, dynamic> toJson() => {
        "publishedAt": publishedAt == null ? null : publishedAt.toIso8601String(),
        "channelId": channelId == null ? null : channelId,
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "thumbnails": thumbnails == null ? null : thumbnails.toJson(),
        "channelTitle": channelTitle == null ? null : channelTitle,
        "playlistId": playlistId == null ? null : playlistId,
        "position": position == null ? null : position,
        "resourceId": resourceId == null ? null : resourceId.toJson(),
    };
}

class ResourceId {
    ResourceId({
        this.kind,
        this.videoId,
    });

    final String kind;
    final String videoId;

    factory ResourceId.fromRawJson(String str) => ResourceId.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ResourceId.fromJson(Map<String, dynamic> json) => ResourceId(
        kind: json["kind"] == null ? null : json["kind"],
        videoId: json["videoId"] == null ? null : json["videoId"],
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "videoId": videoId == null ? null : videoId,
    };
}

class Thumbnails {
    Thumbnails({
        this.thumbnailsDefault,
        this.medium,
        this.high,
        this.standard,
        this.maxres,
    });

    final Default thumbnailsDefault;
    final Default medium;
    final Default high;
    final Default standard;
    final Default maxres;

    factory Thumbnails.fromRawJson(String str) => Thumbnails.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
        thumbnailsDefault: json["default"] == null ? null : Default.fromJson(json["default"]),
        medium: json["medium"] == null ? null : Default.fromJson(json["medium"]),
        high: json["high"] == null ? null : Default.fromJson(json["high"]),
        standard: json["standard"] == null ? null : Default.fromJson(json["standard"]),
        maxres: json["maxres"] == null ? null : Default.fromJson(json["maxres"]),
    );

    Map<String, dynamic> toJson() => {
        "default": thumbnailsDefault == null ? null : thumbnailsDefault.toJson(),
        "medium": medium == null ? null : medium.toJson(),
        "high": high == null ? null : high.toJson(),
        "standard": standard == null ? null : standard.toJson(),
        "maxres": maxres == null ? null : maxres.toJson(),
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
