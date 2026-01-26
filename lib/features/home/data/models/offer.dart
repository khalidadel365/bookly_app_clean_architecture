import 'offer_list_price.dart';

class Offer {
  final num? finskyOfferType;
  final OfferListPrice? listPrice;
  final OfferListPrice? retailPrice;

  Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
  });

  factory Offer.fromMap(Map<String, dynamic> json) => Offer(
    finskyOfferType: json["finskyOfferType"] as num?,
    listPrice: json["listPrice"] == null ? null : OfferListPrice.fromMap(json["listPrice"]),
    retailPrice: json["retailPrice"] == null ? null : OfferListPrice.fromMap(json["retailPrice"]),
  );

  Map<String, dynamic> toMap() => {
    "finskyOfferType": finskyOfferType,
    "listPrice": listPrice?.toMap(),
    "retailPrice": retailPrice?.toMap(),
  };
}