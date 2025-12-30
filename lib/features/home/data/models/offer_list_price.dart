class OfferListPrice {
  final int? amountInMicros;
  final String? currencyCode;

  OfferListPrice({
    this.amountInMicros,
    this.currencyCode,
  });

  factory OfferListPrice.fromMap(Map<String, dynamic> json) => OfferListPrice(
    amountInMicros: json["amountInMicros"],
    currencyCode: json["currencyCode"],
  );

  Map<String, dynamic> toMap() => {
    "amountInMicros": amountInMicros,
    "currencyCode": currencyCode,
  };
}
