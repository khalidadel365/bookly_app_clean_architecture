class SearchInfo {
  final String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  factory SearchInfo.fromMap(Map<String, dynamic> json) => SearchInfo(
    textSnippet: json["textSnippet"]?.toString(),
  );

  Map<String, dynamic> toMap() => {
    "textSnippet": textSnippet,
  };
}