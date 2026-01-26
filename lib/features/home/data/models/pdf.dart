class Pdf {
  final bool? isAvailable;
  final String? acsTokenLink;

  Pdf({
    this.isAvailable,
    this.acsTokenLink,
  });

  factory Pdf.fromMap(Map<String, dynamic> json) => Pdf(
    isAvailable: json["isAvailable"] is bool ? json["isAvailable"] : null,
    acsTokenLink: json["acsTokenLink"]?.toString(),
  );

  Map<String, dynamic> toMap() => {
    "isAvailable": isAvailable,
    "acsTokenLink": acsTokenLink,
  };
}