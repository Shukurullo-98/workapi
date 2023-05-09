class Multimedia {
  Multimedia({
    required this.url,
    required this.format,
    required this.width,
    required this.height,
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
  });

  final String url;
  final String format;
  final int width;
  final int height;
  final String type;
  final String subtype;
  final String caption;
  final String copyright;

  factory Multimedia.fromJson(Map<String, dynamic> json) {
    return Multimedia(
      url: json["url"] as String? ?? "",
      format: json["format"] as String? ?? "",
      width: json["width"] as int? ?? 0,
      height: json["height"] as int? ?? 0,
      type: json["type"] as String? ?? "",
      subtype: json["subtype"] as String? ?? "",
      caption: json["caption"] as String? ?? "",
      copyright: json["copyright"] as String? ?? "",
    );
  }
}
