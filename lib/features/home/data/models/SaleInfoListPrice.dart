class SaleInfoListPrice {
  final num? amount;
  final String? currencyCode;

  SaleInfoListPrice({
    this.amount,
    this.currencyCode,
  });

  factory SaleInfoListPrice.fromMap(Map<String, dynamic> json) => SaleInfoListPrice(
    amount: json["amount"] as num?,
    currencyCode: json["currencyCode"]?.toString(),
  );

  Map<String, dynamic> toMap() => {
    "amount": amount,
    "currencyCode": currencyCode,
  };
}