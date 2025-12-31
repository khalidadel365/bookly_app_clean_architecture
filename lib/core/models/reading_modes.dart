class ReadingModes {
  final bool? text;
  final bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  factory ReadingModes.fromMap(Map<String, dynamic> json) => ReadingModes(
    text: json["text"],
    image: json["image"],
  );

  Map<String, dynamic> toMap() => {
    "text": text,
    "image": image,
  };
}
