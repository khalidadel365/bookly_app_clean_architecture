class Epub {
  final bool? isAvailable;

  Epub({
    this.isAvailable,
  });

  factory Epub.fromMap(Map<String, dynamic> json) => Epub(
    isAvailable: json["isAvailable"] is bool ? json["isAvailable"] : null,
  );

  Map<String, dynamic> toMap() => {
    "isAvailable": isAvailable,
  };
}