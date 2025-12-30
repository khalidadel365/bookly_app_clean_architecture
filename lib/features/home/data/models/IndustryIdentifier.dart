class IndustryIdentifier {
  final String? type;
  final String? identifier;

  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifier.fromMap(Map<String, dynamic> json) => IndustryIdentifier(
    type: json["type"],
    identifier: json["identifier"],
  );

  Map<String, dynamic> toMap() => {
    "type": type,
    "identifier": identifier,
  };
}
