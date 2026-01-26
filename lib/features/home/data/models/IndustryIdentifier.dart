class IndustryIdentifier {
  final String? type;
  final String? identifier;

  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifier.fromMap(Map<String, dynamic> json) => IndustryIdentifier(
    type: json["type"]?.toString(),
    identifier: json["identifier"]?.toString(),
  );

  Map<String, dynamic> toMap() => {
    "type": type,
    "identifier": identifier,
  };
}