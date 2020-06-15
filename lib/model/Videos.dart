// To parse this JSON data, do
//
//     final videosModel = videosModelFromJson(jsonString);
import 'dart:convert';

class VideosModel {
  VideosModel({
    this.kind,
    this.etag,
    this.nextPageToken,
    this.regionCode,
    this.pageInfo,
    this.items,
  });

  final String kind;
  final String etag;
  final String nextPageToken;
  final String regionCode;
  final PageInfo pageInfo;
  final List<Item> items;

  factory VideosModel.fromRawJson(String str) => VideosModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideosModel.fromJson(Map<String, dynamic> json) => VideosModel(
    kind: json["kind"] == null ? null : json["kind"],
    etag: json["etag"] == null ? null : json["etag"],
    nextPageToken: json["nextPageToken"] == null ? null : json["nextPageToken"],
    regionCode: json["regionCode"] == null ? null : json["regionCode"],
    pageInfo: json["pageInfo"] == null ? null : PageInfo.fromJson(json["pageInfo"]),
    items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind == null ? null : kind,
    "etag": etag == null ? null : etag,
    "nextPageToken": nextPageToken == null ? null : nextPageToken,
    "regionCode": regionCode == null ? null : regionCode,
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

  final ItemKind kind;
  final String etag;
  final Id id;
  final Snippet snippet;

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    kind: json["kind"] == null ? null : itemKindValues.map[json["kind"]],
    etag: json["etag"] == null ? null : json["etag"],
    id: json["id"] == null ? null : Id.fromJson(json["id"]),
    snippet: json["snippet"] == null ? null : Snippet.fromJson(json["snippet"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind == null ? null : itemKindValues.reverse[kind],
    "etag": etag == null ? null : etag,
    "id": id == null ? null : id.toJson(),
    "snippet": snippet == null ? null : snippet.toJson(),
  };
}

class Id {
  Id({
    this.kind,
    this.videoId,
  });

  final IdKind kind;
  final String videoId;

  factory Id.fromRawJson(String str) => Id.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Id.fromJson(Map<String, dynamic> json) => Id(
    kind: json["kind"] == null ? null : idKindValues.map[json["kind"]],
    videoId: json["videoId"] == null ? null : json["videoId"],
  );

  Map<String, dynamic> toJson() => {
    "kind": kind == null ? null : idKindValues.reverse[kind],
    "videoId": videoId == null ? null : videoId,
  };
}

enum IdKind { YOUTUBE_VIDEO }

final idKindValues = EnumValues({
  "youtube#video": IdKind.YOUTUBE_VIDEO
});

enum ItemKind { YOUTUBE_SEARCH_RESULT }

final itemKindValues = EnumValues({
  "youtube#searchResult": ItemKind.YOUTUBE_SEARCH_RESULT
});

class Snippet {
  Snippet({
    this.publishedAt,
    this.channelId,
    this.title,
    this.description,
    this.thumbnails,
    this.channelTitle,
    this.liveBroadcastContent,
    this.publishTime,
  });

  final DateTime publishedAt;
  final ChannelId channelId;
  final String title;
  final String description;
  final Thumbnails thumbnails;
  final ChannelTitle channelTitle;
  final LiveBroadcastContent liveBroadcastContent;
  final DateTime publishTime;

  factory Snippet.fromRawJson(String str) => Snippet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
    publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
    channelId: json["channelId"] == null ? null : channelIdValues.map[json["channelId"]],
    title: json["title"] == null ? null : json["title"],
    description: json["description"] == null ? null : json["description"],
    thumbnails: json["thumbnails"] == null ? null : Thumbnails.fromJson(json["thumbnails"]),
    channelTitle: json["channelTitle"] == null ? null : channelTitleValues.map[json["channelTitle"]],
    liveBroadcastContent: json["liveBroadcastContent"] == null ? null : liveBroadcastContentValues.map[json["liveBroadcastContent"]],
    publishTime: json["publishTime"] == null ? null : DateTime.parse(json["publishTime"]),
  );

  Map<String, dynamic> toJson() => {
    "publishedAt": publishedAt == null ? null : publishedAt.toIso8601String(),
    "channelId": channelId == null ? null : channelIdValues.reverse[channelId],
    "title": title == null ? null : title,
    "description": description == null ? null : description,
    "thumbnails": thumbnails == null ? null : thumbnails.toJson(),
    "channelTitle": channelTitle == null ? null : channelTitleValues.reverse[channelTitle],
    "liveBroadcastContent": liveBroadcastContent == null ? null : liveBroadcastContentValues.reverse[liveBroadcastContent],
    "publishTime": publishTime == null ? null : publishTime.toIso8601String(),
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

enum LiveBroadcastContent { NONE }

final liveBroadcastContentValues = EnumValues({
  "none": LiveBroadcastContent.NONE
});

class Thumbnails {
  Thumbnails({
    this.thumbnailsDefault,
    this.medium,
    this.high,
  });

  final Default thumbnailsDefault;
  final Default medium;
  final Default high;

  factory Thumbnails.fromRawJson(String str) => Thumbnails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
    thumbnailsDefault: json["default"] == null ? null : Default.fromJson(json["default"]),
    medium: json["medium"] == null ? null : Default.fromJson(json["medium"]),
    high: json["high"] == null ? null : Default.fromJson(json["high"]),
  );

  Map<String, dynamic> toJson() => {
    "default": thumbnailsDefault == null ? null : thumbnailsDefault.toJson(),
    "medium": medium == null ? null : medium.toJson(),
    "high": high == null ? null : high.toJson(),
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
