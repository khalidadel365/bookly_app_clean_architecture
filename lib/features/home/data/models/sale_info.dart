import 'SaleInfoListPrice.dart';
import 'offer.dart';

class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final SaleInfoListPrice? listPrice;
  final SaleInfoListPrice? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromMap(Map<String, dynamic> json) => SaleInfo(
    country: json["country"]?.toString(),
    saleability: json["saleability"]?.toString(),
    isEbook: json["isEbook"] is bool ? json["isEbook"] : null,
    listPrice: json["listPrice"] == null ? null : SaleInfoListPrice.fromMap(json["listPrice"]),
    retailPrice: json["retailPrice"] == null ? null : SaleInfoListPrice.fromMap(json["retailPrice"]),
    buyLink: json["buyLink"]?.toString(),
    offers: json["offers"] is List
        ? List<Offer>.from(json["offers"].map((x) => Offer.fromMap(x)))
        : [],
  );

  Map<String, dynamic> toMap() => {
    "country": country,
    "saleability": saleability,
    "isEbook": isEbook,
    "listPrice": listPrice?.toMap(),
    "retailPrice": retailPrice?.toMap(),
    "buyLink": buyLink,
    "offers": offers == null ? [] : List<dynamic>.from(offers!.map((x) => x.toMap())),
  };
}