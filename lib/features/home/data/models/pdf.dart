class Pdf {
  final bool? isAvailable;
  final String? acsTokenLink;

  Pdf({
    this.isAvailable,
    this.acsTokenLink,
  });

  factory Pdf.fromMap(Map<String, dynamic> json) => Pdf(
    isAvailable: json["isAvailable"],
    acsTokenLink: json["acsTokenLink"],
  );

  Map<String, dynamic> toMap() => {
    "isAvailable": isAvailable,
    "acsTokenLink": acsTokenLink,
  };
}
