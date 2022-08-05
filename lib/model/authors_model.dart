
import 'dart:convert';

List<AuthorsModel> authorsModelFromMap(String str) => List<AuthorsModel>.from(json.decode(str).map((x) => AuthorsModel.fromMap(x)));

String authorsModelToMap(List<AuthorsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class AuthorsModel {
  AuthorsModel({
  required this.id,
  required  this.attributes,
  });

  int id;
  AuthorsModelAttributes attributes;

  factory AuthorsModel.fromMap(Map<String, dynamic> json) => AuthorsModel(
    id: json["id"],
    attributes: AuthorsModelAttributes.fromMap(json["attributes"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "attributes": attributes.toMap(),
  };
}
class AuthorsModelAttributes {
  AuthorsModelAttributes({
    required this.fullname,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.publishedAt,
    required   this.profile,
    required  this.posts,
  });

  String fullname;
  String createdAt;
  String updatedAt;
  String publishedAt;
  Profile profile;
  Posts posts;

  factory AuthorsModelAttributes.fromMap(Map<String, dynamic> json) => AuthorsModelAttributes(
    fullname: json["Fullname"]?? "",
    createdAt: json["createdAt"]?? "",
    updatedAt: json["updatedAt"]?? "",
    publishedAt: json["publishedAt"]?? "",
    profile: Profile.fromMap(json["profile"]?? ""),
    posts: Posts.fromMap(json["posts"]?? ""),
  );

  Map<String, dynamic> toMap() => {
    "Fullname": fullname,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "publishedAt": publishedAt,
    "profile": profile.toMap(),
    "posts": posts.toMap(),
  };
}

class Posts {
  Posts({
    required  this.data,
  });

  List<PostsDatum> data;

  factory Posts.fromMap(Map<String, dynamic> json) => Posts(
    data: List<PostsDatum>.from(json["data"].map((x) => PostsDatum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "data": List<dynamic>.from(data.map((x) => x.toMap())),
  };
}

class PostsDatum {
  PostsDatum({
    required this.id,
    required  this.attributes,
  });

  int id;
  PurpleAttributes attributes;

  factory PostsDatum.fromMap(Map<String, dynamic> json) => PostsDatum(
    id: json["id"] ?? "",
    attributes: PurpleAttributes.fromMap(json["attributes"] ?? ""),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "attributes": attributes.toMap(),
  };
}

class PurpleAttributes {
  PurpleAttributes({
    required  this.title,
    required  this.description,
    required  this.content,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.publishedAt,
  });

  String title;
  String description;
  String content;
  String createdAt;
  String updatedAt;
  String publishedAt;

  factory PurpleAttributes.fromMap(Map<String, dynamic> json) => PurpleAttributes(
    title: json["title"]?? "",
    description: json["description"]?? "",
    content: json["content"]?? "",
    createdAt: json["createdAt"]?? "",
    updatedAt: json["updatedAt"]?? "",
    publishedAt: json["publishedAt"]?? "",
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "description": description,
    "content": content,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "publishedAt": publishedAt,
  };
}

class Profile {
  Profile({
    required  this.data,
  });

  List<ProfileDatum> data;

  factory Profile.fromMap(Map<String, dynamic> json) => Profile(
    data: List<ProfileDatum>.from(json["data"].map((x) => ProfileDatum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "data": List<dynamic>.from(data.map((x) => x.toMap())),
  };
}

class ProfileDatum {
  ProfileDatum({
    required  this.id,
    required  this.attributes,
  });

  int id;
  FluffyAttributes attributes;

  factory ProfileDatum.fromMap(Map<String, dynamic> json) => ProfileDatum(
    id: json["id"]?? "",
    attributes: FluffyAttributes.fromMap(json["attributes"]?? ""),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "attributes": attributes.toMap(),
  };
}

class FluffyAttributes {
  FluffyAttributes({
    required  this.name,
    required this.alternativeText,
    required  this.caption,
    required  this.width,
    required  this.height,
    required  this.formats,
    required  this.hash,
    required  this.ext,
    required  this.mime,
    required this.size,
    required  this.url,
    required this.previewUrl,
    required  this.provider,
    required  this.providerMetadata,
    required  this.createdAt,
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

  factory FluffyAttributes.fromMap(Map<String, dynamic> json) => FluffyAttributes(
    name: json["name"]?? "",
    alternativeText: json["alternativeText"]?? "",
    caption: json["caption"]?? "",
    width: json["width"]?? "",
    height: json["height"]?? "",
    formats: Formats.fromMap(json["formats"]?? ""),
    hash: json["hash"]?? "",
    ext: json["ext"]?? "",
    mime: json["mime"]?? "",
    size: json["size"].toDouble() ?? "",
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
    // required  this.large,
    // required  this.small,
    // required  this.medium,
    required  this.thumbnail,
  });

  // Thumbnail large;
  // Thumbnail small;
  // Thumbnail medium;
  Thumbnail thumbnail;

  factory Formats.fromMap(Map<String, dynamic> json) => Formats(
    // large: json["large"] ?? "",
    // small: json["small"] ?? "",
    // medium: json["medium"] ?? "",
    thumbnail: Thumbnail.fromMap(json["thumbnail"]?? ""),
  );

  Map<String, dynamic> toMap() => {
    // "large": large.toMap(),
    // "small": small.toMap(),
    // "medium": medium.toMap(),
    "thumbnail": thumbnail.toMap(),
  };
}

class Thumbnail {
  Thumbnail({
    required  this.ext,
    required  this.url,
    required  this.hash,
    required   this.mime,
    required  this.name,
    required  this.path,
    required  this.size,
    required  this.width,
    required  this.height,
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

  factory Thumbnail.fromMap(Map<String, dynamic> json) => Thumbnail(
    ext: json["ext"]?? "",
    url: json["url"]?? "",
    hash: json["hash"]?? "",
    mime: json["mime"]?? "",
    name: json["name"]?? "",
    path: json["path"]?? "",
    size: json["size"].toDouble()?? "",
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
