class ReadingModes {
  final bool? text;
  final bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  factory ReadingModes.fromMap(Map<String, dynamic> json) => ReadingModes(
    text: json["text"] is bool ? json["text"] : null,
    image: json["image"] is bool ? json["image"] : null,
  );

  Map<String, dynamic> toMap() => {
    "text": text,
    "image": image,
  };
}