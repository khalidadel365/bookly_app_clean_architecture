import 'package:bookly_app/features/home/data/models/pdf.dart';
import 'epub.dart';

class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromMap(Map<String, dynamic> json) => AccessInfo(
    country: json["country"]?.toString(),
    viewability: json["viewability"]?.toString(),
    embeddable: json["embeddable"] as bool?,
    publicDomain: json["publicDomain"] as bool?,
    textToSpeechPermission: json["textToSpeechPermission"]?.toString(),
    epub: json["epub"] == null ? null : Epub.fromMap(json["epub"]),
    pdf: json["pdf"] == null ? null : Pdf.fromMap(json["pdf"]),
    webReaderLink: json["webReaderLink"]?.toString(),
    accessViewStatus: json["accessViewStatus"]?.toString(),
    quoteSharingAllowed: json["quoteSharingAllowed"] as bool?,
  );

  Map<String, dynamic> toMap() => {
    "country": country,
    "viewability": viewability,
    "embeddable": embeddable,
    "publicDomain": publicDomain,
    "textToSpeechPermission": textToSpeechPermission,
    "epub": epub?.toMap(),
    "pdf": pdf?.toMap(),
    "webReaderLink": webReaderLink,
    "accessViewStatus": accessViewStatus,
    "quoteSharingAllowed": quoteSharingAllowed,
  };
}