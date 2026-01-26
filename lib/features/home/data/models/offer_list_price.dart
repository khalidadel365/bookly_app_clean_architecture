class OfferListPrice {
  final num? amountInMicros;
  final String? currencyCode;

  OfferListPrice({
    this.amountInMicros,
    this.currencyCode,
  });

  factory OfferListPrice.fromMap(Map<String, dynamic> json) => OfferListPrice(
    amountInMicros: json["amountInMicros"] as num?,
    currencyCode: json["currencyCode"]?.toString(),
  );

  Map<String, dynamic> toMap() => {
    "amountInMicros": amountInMicros,
    "currencyCode": currencyCode,
  };
}