// To parse this JSON data, do
//
//     final blogModel = blogModelFromMap(jsonString);

import 'dart:convert';

List<PostModel> blogModelFromMap(String str) => List<PostModel>.from(json.decode(str).map((x) => PostModel.fromMap(x)));

String blogModelToMap(List<PostModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class PostModel {
  PostModel({
    required  this.id,
    required this.attributes,
  });

  int id;
  BlogModelAttributes attributes;

  factory PostModel.fromMap(Map<String, dynamic> json) => PostModel(
    id: json["id"] ?? "" ,
    attributes: BlogModelAttributes.fromMap(json["attributes"] ?? "" ),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "attributes": attributes.toMap(),
  };
}

class BlogModelAttributes {
  BlogModelAttributes({
    required  this.title,
    required  this.description,
    required this.content,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.publishedAt,
    required   this.thumnail,
    required  this.category,
    required  this.author,
  });

  String title;
  String description;
  String content;
  String createdAt;
  String updatedAt;
  String publishedAt;
  Thumnail thumnail;
  Author category;
  Author author;

  factory BlogModelAttributes.fromMap(Map<String, dynamic> json) => BlogModelAttributes(
    title: json["title"] ?? "",
    description: json["description"] ?? "",
    content: json["content"]?? "",
    createdAt: json["createdAt"]?? "",
    updatedAt: json["updatedAt"]?? "",
    publishedAt: json["publishedAt"]?? "",
    thumnail: Thumnail.fromMap(json["thumnail"]?? ""),
    category: Author.fromMap(json["category"]?? ""),
    author: Author.fromMap(json["author"]?? ""),
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "description": description,
    "content": content,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "publishedAt": publishedAt,
    "thumnail": thumnail.toMap(),
    "category": category.toMap(),
    "author": author.toMap(),
  };
}

class Author {
  Author({
    required this.data,
  });

  Data data;

  factory Author.fromMap(Map<String, dynamic> json) => Author(
    data: Data.fromMap(json["data"] ?? ""),
  );

  Map<String, dynamic> toMap() => {
    "data": data.toMap(),
  };
}

class Data {
  Data({
    required  this.id,
    required  this.attributes,
  });

  int id;
  DataAttributes attributes;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    id: json["id"] ?? "",
    attributes: DataAttributes.fromMap(json["attributes"]?? ""),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "attributes": attributes.toMap(),
  };
}

class DataAttributes {
  DataAttributes({
    required  this.fullname,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.name,
  });

  String fullname;
  String createdAt;
  String updatedAt;
  String publishedAt;
  String name;

  factory DataAttributes.fromMap(Map<String, dynamic> json) => DataAttributes(
    fullname: json["Fullname"] ?? "",
    createdAt: json["createdAt"] ?? "",
    updatedAt: json["updatedAt"]?? "",
    publishedAt: json["publishedAt"]?? "",
    name: json["name"]?? "",
  );

  Map<String, dynamic> toMap() => {
    "Fullname": fullname,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "publishedAt": publishedAt,
    "name": name,
  };
}

class Thumnail {
  Thumnail({
    required this.data,
  });

  List<Datum> data;

  factory Thumnail.fromMap(Map<String, dynamic> json) => Thumnail(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "data": List<dynamic>.from(data.map((x) => x.toMap())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.attributes,
  });

  int id;
  DatumAttributes attributes;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    id: json["id"] ?? "",
    attributes: DatumAttributes.fromMap(json["attributes"]?? ""),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "attributes": attributes.toMap(),
  };
}

class DatumAttributes {
  DatumAttributes({
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required  this.height,
    required this.formats,
    required this.hash,
    required  this.ext,
    required  this.mime,
    required  this.size,
    required  this.url,
    required  this.previewUrl,
    required this.provider,
    required  this.providerMetadata,
    required this.createdAt,
    required  this.updatedAt,
  });

  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  dynamic providerMetadata;
  String createdAt;
  String updatedAt;

  factory DatumAttributes.fromMap(Map<String, dynamic> json) => DatumAttributes(
    name: json["name"]?? "",
    alternativeText: json["alternativeText"]?? "",
    caption: json["caption"]?? "",
    width: json["width"]?? "",
    height: json["height"]?? "",
    formats: Formats.fromMap(json["formats"]?? ""),
    hash: json["hash"]?? "",
    ext: json["ext"]?? "",
    mime: json["mime"]?? "",
    size: json["size"].toDouble()?? "",
    url: json["url"]?? "",
    previewUrl: json["previewUrl"]?? "",
    provider: json["provider"]?? "",
    providerMetadata: json["provider_metadata"]?? "",
    createdAt: json["createdAt"]?? "",
    updatedAt: json["updatedAt"]?? "",
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "alternativeText": alternativeText,
    "caption": caption,
    "width": width,
    "height": height,
    "formats": formats.toMap(),
    "hash": hash,
    "ext": ext,
    "mime": mime,
    "size": size,
    "url": url,
    "previewUrl": previewUrl,
    "provider": provider,
    "provider_metadata": providerMetadata,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

class Formats {
  Formats({
    required  this.small,
    required  this.medium,
    required this.thumbnail,
    // required this.large,
  });

  Medium small;
  Medium medium;
  Medium thumbnail;
  //  Medium large ;

  factory Formats.fromMap(Map<String, dynamic> json) => Formats(
    small: Medium.fromMap(json["small"]?? "",),
    medium: Medium.fromMap(json["medium"]?? "",),
    thumbnail: Medium.fromMap(json["thumbnail"]?? "",),
    // large: Medium.fromMap(json["large"] ?? ""),
  );

  Map<String, dynamic> toMap() => {
    "small": small.toMap(),
    "medium": medium.toMap(),
    "thumbnail": thumbnail.toMap(),
    // "large": large == null ? null : large.toMap(),
  };
}

class Medium {
  Medium({
    required this.ext,
    required this.url,
    required  this.hash,
    required this.mime,
    required   this.name,
    required  this.path,
    required   this.size,
    required  this.width,
    required   this.height,
  });

  String ext;
  String url;
  String hash;
  String mime;
  String name;
  dynamic path;
  double size;
  int width;
  int height;

  factory Medium.fromMap(Map<String, dynamic> json) => Medium(
    ext: json["ext"]?? "",
    url: json["url"]?? "",
    hash: json["hash"]?? "",
    mime: json["mime"]?? "",
    name: json["name"]?? "",
    path: json["path"]?? "",
    size: json["size"].toDouble() ?? "",
    width: json["width"]?? "",
    height: json["height"]?? "",
  );

  Map<String, dynamic> toMap() => {
    "ext": ext,
    "url": url,
    "hash": hash,
    "mime": mime,
    "name": name,
    "path": path,
    "size": size,
    "width": width,
    "height": height,
  };
}
