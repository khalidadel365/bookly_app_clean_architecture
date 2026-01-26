class PanelizationSummary {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromMap(Map<String, dynamic> json) => PanelizationSummary(
    containsEpubBubbles: json["containsEpubBubbles"] is bool ? json["containsEpubBubbles"] : null,
    containsImageBubbles: json["containsImageBubbles"] is bool ? json["containsImageBubbles"] : null,
  );

  Map<String, dynamic> toMap() => {
    "containsEpubBubbles": containsEpubBubbles,
    "containsImageBubbles": containsImageBubbles,
  };
}