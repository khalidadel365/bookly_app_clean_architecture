import 'package:bookly_app/features/home/data/models/reading_modes.dart';
import 'IndustryIdentifier.dart';
import 'PanelizationSummary.dart';
import 'image_links.dart';

class VolumeInfo {
  final String? title;
  final List<dynamic>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final num? pageCount;
  final String? printType;
  final List<dynamic>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;
  final num? averageRating;
  final num? ratingsCount;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
    this.averageRating,
    this.ratingsCount,
  });

  factory VolumeInfo.fromMap(Map<String, dynamic> json) => VolumeInfo(
    title: json["title"]?.toString(),
    authors: json["authors"] is List ? List<dynamic>.from(json["authors"]) : [],
    publisher: json["publisher"]?.toString(),
    publishedDate: json["publishedDate"]?.toString(),
    description: json["description"]?.toString(),
    industryIdentifiers: json["industryIdentifiers"] is List
        ? List<IndustryIdentifier>.from(json["industryIdentifiers"].map((x) => IndustryIdentifier.fromMap(x)))
        : [],
    readingModes: json["readingModes"] == null ? null : ReadingModes.fromMap(json["readingModes"]),
    pageCount: json["pageCount"] as num?,
    printType: json["printType"]?.toString(),
    categories: json["categories"] is List ? List<dynamic>.from(json["categories"]) : [],
    maturityRating: json["maturityRating"]?.toString(),
    allowAnonLogging: json["allowAnonLogging"] as bool?,
    contentVersion: json["contentVersion"]?.toString(),
    panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromMap(json["panelizationSummary"]),
    imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromMap(json["imageLinks"]),
    language: json["language"]?.toString(),
    previewLink: json["previewLink"]?.toString(),
    infoLink: json["infoLink"]?.toString(),
    canonicalVolumeLink: json["canonicalVolumeLink"]?.toString(),
    averageRating: json["averageRating"] as num?,
    ratingsCount: json["ratingsCount"] as num?,
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "authors": authors,
    "publisher": publisher,
    "publishedDate": publishedDate,
    "description": description,
    "industryIdentifiers": industryIdentifiers?.map((x) => x.toMap()).toList(),
    "readingModes": readingModes?.toMap(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": categories,
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary?.toMap(),
    "imageLinks": imageLinks?.toMap(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
    "averageRating": averageRating,
    "ratingsCount": ratingsCount,
  };
}