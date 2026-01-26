import 'package:bookly_app/features/home/data/models/sale_info.dart';
import 'package:bookly_app/features/home/data/models/search_info.dart';
import 'package:bookly_app/features/home/data/models/volume_info.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

import 'access_info.dart';

class BookModel extends BookEntity {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
    bookId: id ?? '',
    image: volumeInfo?.imageLinks?.thumbnail ?? '',
    title: volumeInfo?.title ?? 'No Title',
    authorName: volumeInfo?.authors?.first ?? 'No Name',
    price: 0.0,
    rating: volumeInfo?.averageRating?.toDouble() ?? 0.0,
  );

  factory BookModel.fromMap(Map<String, dynamic> json) => BookModel(
    kind: json["kind"],
    id: json["id"],
    etag: json["etag"],
    selfLink: json["selfLink"],
    volumeInfo:
        json["volumeInfo"] == null
            ? null
            : VolumeInfo.fromMap(json["volumeInfo"]),
    saleInfo:
        json["saleInfo"] == null ? null : SaleInfo.fromMap(json["saleInfo"]),
    accessInfo:
        json["accessInfo"] == null
            ? null
            : AccessInfo.fromMap(json["accessInfo"]),
    searchInfo:
        json["searchInfo"] == null
            ? null
            : SearchInfo.fromMap(json["searchInfo"]),
  );

  Map<String, dynamic> toMap() => {
    "kind": kind,
    "id": id,
    "etag": etag,
    "selfLink": selfLink,
    "volumeInfo": volumeInfo?.toMap(),
    "saleInfo": saleInfo?.toMap(),
    "accessInfo": accessInfo?.toMap(),
    "searchInfo": searchInfo?.toMap(),
  };
}
