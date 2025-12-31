class SaleInfoListPrice {
  final double? amount;
  final String? currencyCode;

  SaleInfoListPrice({
    this.amount,
    this.currencyCode,
  });

  factory SaleInfoListPrice.fromMap(Map<String, dynamic> json) => SaleInfoListPrice(
    amount: json["amount"]?.toDouble(),
    currencyCode: json["currencyCode"],
  );

  Map<String, dynamic> toMap() => {
    "amount": amount,
    "currencyCode": currencyCode,
  };
}
