class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromMap(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json["smallThumbnail"]?.toString(),
    thumbnail: json["thumbnail"]?.toString(),
  );

  Map<String, dynamic> toMap() => {
    "smallThumbnail": smallThumbnail,
    "thumbnail": thumbnail,
  };
}