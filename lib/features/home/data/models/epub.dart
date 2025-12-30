class Epub {
  final bool? isAvailable;

  Epub({
    this.isAvailable,
  });

  factory Epub.fromMap(Map<String, dynamic> json) => Epub(
    isAvailable: json["isAvailable"],
  );

  Map<String, dynamic> toMap() => {
    "isAvailable": isAvailable,
  };
}
